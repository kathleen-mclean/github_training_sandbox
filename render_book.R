library(here)
library(quarto)
library(stringr)


# render book -------------------------------------------------------------

# Fix path issue if the working directory is on U: drive
if (str_sub(here::here(), 1, 6) == "\\\\PHSA") {
  project_folder_path <- str_glue("U:/{str_split_fixed(here::here(), '/', 3)[,3]}")
} else {
  project_folder_path <- here::here()
}

quarto::quarto_render(project_folder_path)
