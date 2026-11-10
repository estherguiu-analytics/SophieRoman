# Shared helper: get a readable copy of a workbook that may be locked.
#
# Sourced by every .Rmd in this folder that reads the raw Excel. It lives in its own file
# rather than being pasted into each script, so the lock workaround is fixed in one place.
#
# The workbook in data/raw/ is frequently open in Excel. Held open, it cannot be read in
# place at all: readxl fails with "zip file cannot be opened", and both R's file.copy and
# cmd's copy are refused by the exclusive lock. Three routes are tried in order:
#
#   1. file.copy            - normal case
#   2. cmd copy             - succeeds against some locks R's own copy is refused by
#   3. Excel itself, over COM SaveCopyAs - the only route that works when Excel holds an
#      exclusive lock. Writes a copy elsewhere; never touches the file in data/raw/.
#
# Returns the path to the copy. Errors only if all three fail.

readable_copy <- function(path, dest_name = "wb_study1.xlsx") {
  dest <- file.path(tempdir(), dest_name)
  if (file.exists(dest)) unlink(dest)
  src <- normalizePath(path)

  suppressWarnings(try(file.copy(src, dest, overwrite = TRUE), silent = TRUE))

  if (!file.exists(dest) || file.size(dest) == 0) {
    system2("cmd", c("/c", "copy", "/y", shQuote(src), shQuote(dest)),
            stdout = NULL, stderr = NULL)
  }

  if (!file.exists(dest) || file.size(dest) == 0) {
    # The .ps1 must be pure ASCII: the workbook name contains "AGUSTI" with an acute accent,
    # and PowerShell misreads a non-ASCII path out of a BOM-less script file, so an exact
    # FullName comparison silently never matches. Match on a pattern with runs of non-ASCII
    # replaced by a wildcard instead. Do not "tidy" this into a full-path comparison.
    pat <- gsub("[^ -~]+", "*", basename(src))
    ps1 <- file.path(tempdir(), "grab_from_excel.ps1")
    writeLines(c(
      "try {",
      "  $xlApp = [Runtime.InteropServices.Marshal]::GetActiveObject('Excel.Application')",
      sprintf("  foreach ($wb in $xlApp.Workbooks) { if ($wb.Name -like '%s') { $wb.SaveCopyAs('%s') } }",
              pat, normalizePath(dest, mustWork = FALSE)),
      "} catch { exit 1 }"
    ), ps1, useBytes = TRUE)
    system2("powershell", c("-NoProfile", "-ExecutionPolicy", "Bypass", "-File", shQuote(ps1)),
            stdout = NULL, stderr = NULL)
  }

  if (!file.exists(dest) || file.size(dest) == 0) {
    stop("Could not read ", basename(path), " - close it in Excel and re-run.")
  }

  cat("read via copy:", format(file.size(dest), big.mark = ","), "bytes\n")
  dest
}
