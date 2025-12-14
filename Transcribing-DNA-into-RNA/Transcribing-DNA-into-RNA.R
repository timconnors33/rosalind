library(readr)
require(dplyr)

rm(list = ls())

dna_string <- read_file("Transcribing-DNA-into-RNA/input.txt")
dna_vec <- strsplit(dna_string, "")[[1]]

rna_vec <- case_match(
  dna_vec,
  "A" ~ "A",
  "C" ~ "C",
  "G" ~ "G",
  "T" ~ "U",
  .default = ""
)

print(paste(rna_vec, collapse = ""))