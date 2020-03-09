#' Fyrra ggplot2 þema Gagnaþjónustu Reykjavíkurborgar
#'
#' Þetta er fyrsta uppkast að sérstöku þema fyrir Gagnaþjónustu Reykjavíkurborgar.
#' Sem stendur er þetta að bara umritað theme_roboto úr silgelib pakkanum hennar Juliu Silge.
#' @param base_size grunnstærð leturs
#' @param strip_text_size,strip_text_margin
#' @param subtitle_size,subtitle_margin
#' @param plot_title_size,plot_title_margin
#' @param ... inntök sem færð eru áfram í \code{theme_minimal}
#'
#' @details Roboto Condensed og Roboto Bold letrin eru Google letur;
#' hægt er að hala þeim niður á \url{https://fonts.google.com/specimen/Roboto+Condensed}
#' og \url{https://fonts.google.com/specimen/Roboto}. Þessar leturgerðir verða
#' að vera uppsettar á tölvunni þinni til að þú getir notast við þemað.
#'
#' @return
#' @export
#'
#' @examples
#' ggplot(mtcars, aes(x = drat, y = mpg ))
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

#' Síðara ggplot2 þema Gagnaþjónustu Reykjavíkurborgar
#'
#' @param base_size grunnstærð leturs
#' @param strip_text_size,strip_text_margin
#' @param subtitle_size,subtitle_margin
#' @param plot_title_size,plot_title_margin
#' @param ... inntök sem færð eru áfram í \code{theme_minimal}
#'
#' @details IBM Plex leturgerðirnar eru open source og hægt er að nálgast þær á
#' \url{https://github.com/IBM/plex}. Þessar leturgerðir verða
#' að vera uppsettar á tölvunni þinni til að þú getir notast við þemað.
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#'
#' ggplot(mtcars, aes(wt, mpg)) +
#'     geom_point() +
#'     labs(title = "A Lovely Plot",
#'          subtitle = "What can the subtitle tell us?") +
#'     theme_rvk2()
#'
#' ggplot(diamonds, aes(carat, price, color = clarity)) +
#'     geom_point() +
#'     facet_wrap(~cut) +
#'     labs(title = "A Lovely Plot",
#'          subtitle = "What can the subtitle tell us?") +
#'          theme_rvk2()
#'
#'}
#'
#' @export
#'
#'
theme_rvk2 <- function(base_size = 11,
                      strip_text_size = 12,
                      strip_text_margin = 5,
                      subtitle_size = 13,
                      subtitle_margin = 10,
                      plot_title_size = 16,
                      plot_title_margin = 10,
                      ...) {
  ggplot2::theme_minimal(base_family = "IBMPlexSans",
                         base_size = base_size, ...) +
    ggplot2::theme(strip.text = ggplot2::element_text(hjust = 0, size=strip_text_size,
                                                      margin=margin(b=strip_text_margin),
                                                      family="IBMPlexSans-Medium"),
                   plot.subtitle = ggplot2::element_text(hjust = 0, size=subtitle_size,
                                                         margin=margin(b=subtitle_margin),
                                                         family="IBMPlexSans"),
                   plot.title = ggplot2::element_text(hjust = 0, size = plot_title_size,
                                                      margin=margin(b=plot_title_margin),
                                                      family="IBMPlexSans-Bold")
    )
}
