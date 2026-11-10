# Build Manuscript/revisions/analysis_summary.html from the markdown.
#
#   Rscript src/render_analysis_summary.R          # HTML only (the deliverable)
#   Rscript src/render_analysis_summary.R --pdf    # also write analysis_summary.pdf
#
# HTML is the deliverable because the document is long, table-heavy and has a navigable table of
# contents, all of which read better on screen than in a fixed-page PDF. self_contained = TRUE
# base64-embeds the three figures, so it is ONE portable file that can be emailed with nothing
# alongside it, and the relative image paths stop mattering once it is built.
#
# The optional PDF route goes HTML -> headless Chrome, not LaTeX. MiKTeX is on this machine but
# pdflatex cannot typeset the emoji this document uses, and it overflows the wider tables off the
# page. Don't switch it back without stripping those first.
#
# The stylesheet carries a @media print block, so Ctrl+P from the browser also gives a clean
# A4 document without needing the --pdf route at all.

if (!nzchar(Sys.getenv("RSTUDIO_PANDOC"))) {
  Sys.setenv(RSTUDIO_PANDOC = "C:/Program Files/RStudio/resources/app/bin/quarto/bin/tools")
}

want_pdf <- "--pdf" %in% commandArgs(TRUE)

md  <- file.path("..", "Manuscript", "revisions", "analysis_summary.md")
out <- normalizePath(file.path("..", "Manuscript", "revisions"), mustWork = TRUE)
stopifnot(file.exists(md))

# --- stylesheet -------------------------------------------------------------------------
# Tables here are wide and text-heavy. table-layout:fixed + word-wrap keeps them inside the
# column instead of forcing horizontal scroll.
css <- file.path(tempdir(), "summary.css")
writeLines(c(
  "body { font-size: 16px; line-height: 1.65; color: #1a1a1a; }",
  ".main-container { max-width: 1000px; }",
  "h1 { font-size: 1.9em; } h2 { font-size: 1.4em; margin-top: 1.8em;",
  "     border-bottom: 1px solid #ddd; padding-bottom: 4px; }",
  "h3 { font-size: 1.12em; margin-top: 1.5em; }",
  "table { width: 100%; table-layout: fixed; word-wrap: break-word;",
  "        border-collapse: collapse; font-size: 0.86em; margin: 1em 0; }",
  "th, td { border: 1px solid #ccc; padding: 5px 8px; vertical-align: top; }",
  "th { background: #f4f4f4; text-align: left; }",
  "img { max-width: 100%; height: auto; border: 1px solid #e5e5e5; }",
  "blockquote { border-left: 4px solid #ccc; margin-left: 0; padding: 2px 14px;",
  "             color: #222; background: #fafafa; font-size: 1em; }",
  "pre { background: #f6f6f6; border: 1px solid #e5e5e5; }",
  "",
  "@media print {",
  "  @page { size: A4; margin: 18mm 15mm; }",
  "  body { font-size: 10.5pt; }",
  "  .main-container { max-width: none; }",
  "  #TOC { display: none; }",
  "  table { font-size: 8.8pt; }",
  "  h2, h3 { page-break-after: avoid; }",
  "  table, pre, img, blockquote { page-break-inside: avoid; }",
  "}"
), css)

html <- file.path(out, "analysis_summary.html")
rmarkdown::render(
  md,
  output_format = rmarkdown::html_document(
    self_contained = TRUE, toc = TRUE, toc_depth = 3, toc_float = TRUE,
    css = css,
    # The markdown has no YAML header, so the browser-tab title has to be supplied here.
    # It must go on the format object: output_options is ignored when output_format is an
    # object rather than a format name.
    pandoc_args = c("--metadata",
                    "title=Statistical analysis for the revision - SophieRoman Study 1")
  ),
  output_file = html,
  quiet = TRUE
)
cat("HTML:", html, format(file.size(html), big.mark = ","), "bytes\n")

# --- optional PDF -----------------------------------------------------------------------
if (want_pdf) {
  chrome <- Filter(file.exists, c(
    "C:/Program Files/Google/Chrome/Application/chrome.exe",
    "C:/Program Files (x86)/Google/Chrome/Application/chrome.exe",
    "C:/Program Files (x86)/Microsoft/Edge/Application/msedge.exe",
    "C:/Program Files/Microsoft/Edge/Application/msedge.exe"))
  if (!length(chrome)) stop("No Chrome or Edge found for PDF conversion.")

  pdf <- file.path(out, "analysis_summary.pdf")
  if (file.exists(pdf)) unlink(pdf)
  url <- paste0("file:///", gsub(" ", "%20", gsub("\\\\", "/", normalizePath(html))))
  system2(chrome[1], c("--headless", "--disable-gpu", "--no-sandbox",
                       "--no-pdf-header-footer",
                       paste0("--print-to-pdf=", shQuote(normalizePath(pdf, mustWork = FALSE))),
                       shQuote(url)), stdout = NULL, stderr = NULL)
  if (!file.exists(pdf) || file.size(pdf) == 0) stop("PDF was not produced.")
  cat("PDF :", pdf, format(file.size(pdf), big.mark = ","), "bytes\n")
}
