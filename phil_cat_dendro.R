# This code will create a DENDROGRAM showing the relationship between the PhilPapers categorization system and the 
# Library of Congress categorization system, using the dataframe uploaded as phil_cat_dataframe.csv.

# VARIABLES TO ADJUST
file <- "phil_cat_dendro.csv"

# Create the dendrogram
install.packages("ggraph")
library(ggraph)

phil_dendro <- read.csv(file)
ggraph(phil_dendro, "dendrogram") + 
  geom_edge_diagonal() +
  geom_node_point() +
  coord_flip(ylim=c(3,-1.5)) +
  geom_node_label(aes(label=name, angle=0, hjust=0))
