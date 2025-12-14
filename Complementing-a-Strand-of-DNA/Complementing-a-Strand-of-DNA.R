library(readr)
require(dplyr)

rm(list = ls())

dna_string <- read_file("Complementing-a-Strand-of-DNA/input.txt")
dna_vec <- strsplit(dna_string, "")[[1]]

dna_complement <- case_match(
  rev(dna_vec),
  "A" ~ "T",
  "C" ~ "G",
  "G" ~ "C",
  "T" ~ "A",
  .default = ""
)

print(paste(dna_complement, collapse = ""))