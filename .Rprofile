if (file.exists('~/.Rprofile')) sys.source('~/.Rprofile', envir = environment())

options(
  blogdown.yaml.empty = FALSE, blogdown.rename_file = TRUE,
  blogdown.title_case = function(x) {
    # if the title is pure ASCII, use title case
    if (xfun::is_ascii(x)) tools::toTitleCase(x) else x
  },
  blogdown.hugo.version = '0.74.3'
)

if (blogdown::hugo_available('0.74.3', exact = TRUE)) {
  blogdown::install_hugo('0.74.3')
}
