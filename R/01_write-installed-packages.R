## deja vu from earlier!

## create a data frame of your installed packages
## hint: installed.packages() is the function you need

pacman::p_load(tidyverse)
pacman::p_load(here)

## optional: select just some of the variables, such as
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

ipt <- installed.packages() %>%
  as_tibble() %>%
  select(Package, LibPath, Version, Priority, Built)

# where am I now? and what's in there
here()
list.files()


## write this data frame to data/installed-packages.csv

# write_csv(x, path, na = "NA", append = FALSE,col_names = !append)

## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path
readr::write_csv(ipt, path = here('data', "installed-packages.csv"))


## YES overwrite the file that is there now (or delete it first)
## that's a old result from me (Jenny)
## it an example of what yours should look like and where it should go
