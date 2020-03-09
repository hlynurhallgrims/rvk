#' Bættu við texta fyrir titla og ása
#'
#'Þetta fall er til hægðarauka og setur inn dummy-texta fyrir titla og ása.
#'
#' @return
#' @export
#'
#' @examples
labs_demo <- function() {
  labs(title = "Þetta er flott plott",
       subtitle = "Það er með undirfyrirsögn",
       x = "Hér er X-ásinn",
       y = "Hér er Y-ásinn",
       color = "Þetta eru flokkarnir",
       fill = "Þetta er flokkarnir",
       caption = "Heimild: Gagnaþjónusta Reykjavíkur")
}
