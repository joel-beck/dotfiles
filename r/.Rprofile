options(error = rlang::entrace, rlang_backtrace_on_error = "branch")

options(styler.cache_root = "styler")

options(
  todor_patterns = c("TODO", "NOTE", "COMMENT", "FIXME", "SECTION", "SUBSECTION", "BOOKMARK")
)

if (interactive()) {
  suppressMessages(require(reprex))
  suppressMessages(require(devtools))
  suppressMessages(require(shrtcts))
}

if (interactive() && requireNamespace("shrtcts", quietly = TRUE)) {
  shrtcts::add_rstudio_shortcuts(set_keyboard_shortcuts = TRUE)
}

# modify RStudio Startup Message
setHook("rstudio.sessionInit", function(newSession) {

  # clear console
  cat("\014")

  # print colored message to console
  cat(crayon::cyan(" -------------------------------"))

  cat(paste0(
    crayon::cyan("\n|\t"),
    crayon::green("Life is fun "),
    emo::ji("sun_with_face"),
    emo::ji("four_leaf_clover"),
    crayon::cyan("\t\t|\n")
  ))

  cat(crayon::cyan(" -------------------------------"))

  cat("\n\n")

  # print statistician's quote to console
  cat(paste(statquotes::statquote()[4:5], collapse = "\n - "))

  cat("\n\n")
},
action = "append"
)
