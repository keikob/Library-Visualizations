# This code will create a COLLAPSIBLE TREE showing the relationship between the PhilPapers categorization system and the 
# Library of Congress categorization system, using the dataframe uploaded as phil_cat_dataframe.csv.

# VARIABLES TO ADJUST
file <- "phil_cat_dataframe.csv"

# Create the collapsible tree
install.packages("collapsibleTree")
library(collapsibleTree)

phil_tree <- read.csv(file)
phil_coll_tree <- collapsibleTree(phil_tree, c("PPbroad","LCcategory","PPspecific","LCnumber")); phil_coll_tree

# Save the image
library(htmlwidgets)
saveWidget(phil_coll_tree, file="phil_coll_tree.html")

