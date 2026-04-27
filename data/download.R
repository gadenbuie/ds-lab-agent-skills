library(fs)
library(curl)
library(cli)

dir_create("data")

base_url <- "https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2026/2026-04-28"

files <- c(
  "agreements.csv",
  "quantity_codes.csv",
  "tariff_agricultural.csv",
  "tariff_codes.csv",
  "readme.md"
)

cli_progress_step("Downloading TidyTuesday data")
for (file in files) {
  dest <- path("data", file)
  cli_progress_step("Downloading {.path {file}}")
  if (!file_exists(dest)) {
    curl_download(paste0(base_url, "/", file), dest)
    cli_progress_done()
  } else {
    cli_process_done(
      msg_done = "{.path {file}} already exists, skipping download"
    )
  }
}
cli_progress_done()
