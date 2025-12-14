string <- read_file("Counting-DNA-Nucleotides/input.txt")
adenine_count <- 0
cytosine_count <- 0
guanine_count <- 0
thymine_count <- 0

char_vector <- strsplit(string, "")[[1]]

for (char in char_vector) {
  if (char == 'A') {
    adenine_count = adenine_count + 1
  } else if (char == 'G') {
    guanine_count = guanine_count + 1
  } else if (char == 'C') {
    cytosine_count = cytosine_count + 1
  } else if (char == 'T') {
    thymine_count = thymine_count + 1
  }
}

print(paste(adenine_count, cytosine_count, guanine_count, thymine_count))
