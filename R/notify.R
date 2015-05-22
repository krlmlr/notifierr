#' Create a desktop notification
#'
#' This function creates a desktop notification, currently using the
#' \code{notify-send} command.
#'
#' @param subject,body Message contents
#' @export
notify <- function(subject = NULL, body = NULL) {
  if (is.null(subject))
    subject <- "notifierr"
  if (is.null(body))
    body <- ""
  system2("notify-send", c(shQuote(subject), shQuote(body)))
}
