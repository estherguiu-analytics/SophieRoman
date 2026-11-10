# Shared interval and test helpers.
#
# Sourced by prevalence_ci_and_paired_contrasts.Rmd and reviewer_requested_tests.Rmd. In its
# own file so there is one definition to fix, not two that can drift.
#
# PropCIs, binom, exact2x2 and DescTools are NOT installed on this machine, so Wilson,
# Newcombe, Cochran's Q and kappa are implemented here. Wilson is verified against the worked
# example in ANALYSIS_PLAN.md on every run by the scripts that source this file.

# --- Wilson score interval for a single proportion -------------------------------------
wilson <- function(x, n, conf = 0.95) {
  z  <- qnorm(1 - (1 - conf) / 2)
  p  <- x / n
  ctr  <- (p + z^2 / (2 * n)) / (1 + z^2 / n)
  half <- z * sqrt(p * (1 - p) / n + z^2 / (4 * n^2)) / (1 + z^2 / n)
  c(lower = max(0, ctr - half), upper = min(1, ctr + half))
}

# --- Newcombe (1998) method 10, paired difference of proportions ------------------------
# Square-and-add on the two Wilson intervals, with a correlation correction from the 2x2.
# a = positive under both, b = positive under condition 1 only,
# c = positive under condition 2 only, d = negative under both.
newcombe_paired <- function(a, b, c, d, conf = 0.95) {
  n  <- a + b + c + d
  p1 <- (a + b) / n
  p2 <- (a + c) / n
  rd <- p1 - p2
  w1 <- wilson(a + b, n, conf)
  w2 <- wilson(a + c, n, conf)
  A   <- (a + b) * (c + d) * (a + c) * (b + d)
  phi <- if (A <= 0) 0 else (a * d - b * c) / sqrt(A)
  l1 <- p1 - w1[["lower"]]; u1 <- w1[["upper"]] - p1
  l2 <- p2 - w2[["lower"]]; u2 <- w2[["upper"]] - p2
  c(rd    = rd,
    lower = max(-1, rd - sqrt(l1^2 + u2^2 - 2 * phi * l1 * u2)),
    upper = min( 1, rd + sqrt(u1^2 + l2^2 - 2 * phi * u1 * l2)))
}

# --- Exact McNemar, i.e. a binomial test on the discordant pairs ------------------------
mcnemar_exact <- function(b, c) {
  if (b + c == 0) return(c(p = NA_real_, discordant = 0, prop_improve = NA_real_))
  c(p = binom.test(b, b + c, 0.5)$p.value,
    discordant = b + c,
    prop_improve = b / (b + c))
}

# --- Cochran's Q for k related binary conditions ----------------------------------------
# X: matrix or data.frame, one row per subject, one column per condition, values 0/1.
# Subjects who are all-0 or all-1 contribute nothing and cancel out of the statistic, which
# is why the denominator uses the row totals.
cochran_q <- function(X) {
  X <- as.matrix(X)
  stopifnot(all(X %in% c(0, 1)), !any(is.na(X)))
  k  <- ncol(X)
  Li <- rowSums(X)
  Gj <- colSums(X)
  N  <- sum(X)
  denom <- k * N - sum(Li^2)
  if (denom == 0) return(c(Q = NA_real_, df = k - 1, p = NA_real_, informative_rows = 0))
  Q <- (k - 1) * (k * sum(Gj^2) - N^2) / denom
  c(Q = Q, df = k - 1, p = pchisq(Q, k - 1, lower.tail = FALSE),
    informative_rows = sum(Li > 0 & Li < k))
}

# --- Cohen's kappa for a 2x2 table, with the indices that expose its paradox ------------
# The asymptotic interval is the textbook large-sample approximation. At the sample sizes in
# this study it is unreliable and is reported only because the reviewer asked for kappa;
# raw agreement with a Wilson interval, and PABAK, are the trustworthy numbers.
#
# prevalence index = |p(both yes) - p(both no)|  - large when the trait is rare or common
# bias index       = |p(yes only 1) - p(yes only 2)| - large when the two marginals differ
# Kappa is pulled toward zero when the prevalence index is high even if agreement is high:
# that is the prevalence/bias paradox, and PABAK = 2*po - 1 removes it.
kappa_2x2 <- function(a, b, c, d, conf = 0.95) {
  n  <- a + b + c + d
  po <- (a + d) / n
  pe <- ((a + b) * (a + c) + (c + d) * (b + d)) / n^2
  kap <- if (pe == 1) NA_real_ else (po - pe) / (1 - pe)
  se  <- if (pe == 1) NA_real_ else sqrt(po * (1 - po) / (n * (1 - pe)^2))
  z   <- qnorm(1 - (1 - conf) / 2)
  agr <- wilson(a + d, n, conf)
  c(po = po, po_lower = agr[["lower"]], po_upper = agr[["upper"]],
    kappa = kap, kappa_lower = kap - z * se, kappa_upper = kap + z * se,
    pabak = 2 * po - 1,
    prevalence_index = abs(a / n - d / n),
    bias_index = abs(b / n - c / n),
    n = n)
}
