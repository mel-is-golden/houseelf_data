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

percent_gc <- gc_content(elf)

# Exercise 7
source('classify_ear_size.R')
ear_class <- get_size_class(houseelf$earlength)
df.table <- data.frame(houseelf$id, ear_class, percent_gc)
write.csv(df.table, file = "houseelf_ear_gc_data.csv")
