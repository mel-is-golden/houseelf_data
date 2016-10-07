# Used for the comparision of house elves
houseelf <- read.csv("./data/houseelf_earlength_dna_data_1.csv", header = TRUE)
# Exercise 6
elf <- houseelf$dnaseq
gc_content <- function(elf){
  elf <- str_to_lower(elf)
  t <- str_length(elf)
  Gs <- str_count(elf, "g")
  Cs <- str_count(elf,"c")
  gc <- (Gs+Cs)/t*100
return(gc)
}
for(i in 1:length(elf)){
  print(gc_content(elf[i]))
}

