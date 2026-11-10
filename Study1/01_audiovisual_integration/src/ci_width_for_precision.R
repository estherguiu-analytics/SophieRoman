wilson <- function(x, n, conf = 0.95) {
  z <- qnorm(1 - (1 - conf) / 2); p <- x / n
  d <- 1 + z^2 / n
  c(lower = (p + z^2/(2*n) - z*sqrt(p*(1-p)/n + z^2/(4*n^2)))/d,
    upper = (p + z^2/(2*n) + z*sqrt(p*(1-p)/n + z^2/(4*n^2)))/d)
}
halfwidth <- function(n, p = 0.5) { ci <- wilson(round(p*n), n); 100*(ci[["upper"]]-ci[["lower"]])/2 }

cat("--- observed intervals at n = 38 ---\n")
for (x in c(23, 31)) {
  ci <- wilson(x, 38)
  cat(sprintf("%d/38 = %.1f%%  [%.1f, %.1f]  half-width %.1f pp\n",
              x, 100*x/38, 100*ci[["lower"]], 100*ci[["upper"]],
              100*(ci[["upper"]]-ci[["lower"]])/2))
}
ci <- wilson(18, 23)
cat(sprintf("18/23 = %.1f%%  [%.1f, %.1f]  half-width %.1f pp\n",
            100*18/23, 100*ci[["lower"]], 100*ci[["upper"]],
            100*(ci[["upper"]]-ci[["lower"]])/2))

cat("\n--- half-width at p = 0.5 by n ---\n")
for (n in c(38, 60, 100, 150, 200, 384)) cat(sprintf("n = %3d -> +/- %.1f pp\n", n, halfwidth(n)))

cat("\n--- n needed for a target half-width at p = 0.5 ---\n")
for (target in c(15, 10, 8, 5)) {
  n <- 10; while (halfwidth(n) > target && n < 5000) n <- n + 1
  cat(sprintf("+/- %2d pp needs n = %d\n", target, n))
}
