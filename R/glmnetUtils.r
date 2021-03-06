#' @title Utilities for glmnet
#' @description
#' Some quality-of-life functions to streamline the process of fitting elastic net models with the `glmnet` package, specifically:
#' 
#' \itemize{
#'   \item `glmnet.formula` provides a formula/data frame interface to `glmnet`.
#'   \item `cv.glmnet.formula` does a similar thing for `cv.glmnet`.
#'   \item Methods for `predict` and `coef` for both the above.
#'   \item A function `cvAlpha.glmnet` to choose both the alpha and lambda parameters via cross-validation, following the approach described in the help page for `cv.glmnet`. Optionally does the cross-validation in parallel.
#'   \item Methods for `plot`, `predict` and `coef` for the above.
#' }
#' 
#' @docType package
#' @name glmnetUtils
#' @aliases glmnetUtils-package
NULL


dropIntercept <- function(matr)
{
    if(!is.matrix(matr))
        matr <- as.matrix(matr)
    matr[, -1, drop=FALSE]
}
