#' scale_color_rvk
#' Litaskali Gagnaþjónustu Reykjavíkurborgar
scale_color_rvk <- function(...) {
  discrete_scale("colour", "rvk", rvk_pal(), ...)
}

#' scale_fill_rvk
#' Litaskali Gagnaþjónustu Reykjavíkurborgar
scale_fill_rvk <- function(...) {
  discrete_scale("fill", "rvk", rvk_pal(), ...)
}

#' rvk_pal
#' Litapaletta Gagnaþjónustu Reykjavíkurborgar
rvk_pal <- function() {
  values <- unname(rvk::rvk_palettur[["value"]])
  max_n <- length(values)
  f <- scales::manual_pal(values)
  attr(f, "max_n") <- max_n
  f
}



