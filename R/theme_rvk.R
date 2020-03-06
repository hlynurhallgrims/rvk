#' ggplot2 þema Gagnaþjónustu Reykjavíkurborgar
#'
#' @param base_size
#' @param strip_text_size
#' @param strip_text_margin
#' @param subtitle_size
#' @param subtitle_margin
#' @param plot_title_size
#' @param plot_title_margin
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
theme_rvk <- function(base_size = 11,
                      strip_text_size = 12,
                      strip_text_margin = 5,
                      subtitle_size = 13,
                      subtitle_margin = 10,
                      plot_title_size = 16,
                      plot_title_margin = 10,
                      ...) {
  ggplot2::theme_minimal(base_family = "RobotoCondensed-Regular",
                         base_size = base_size, ...) +
  ggplot2::theme(strip.text = ggplot2::element_text(hjust = 0, size=strip_text_size,
                                                      margin=margin(b=strip_text_margin),
                                                      family="Roboto-Bold"),
                 plot.subtitle = ggplot2::element_text(hjust = 0, size=subtitle_size,
                                                         margin=margin(b=subtitle_margin),
                                                         family="RobotoCondensed-Regular"),
                 plot.title = ggplot2::element_text(hjust = 0, size = plot_title_size,
                                                      margin=margin(b=plot_title_margin),
                                                      family="Roboto-Bold")
    )
}
