This repository contains files that assist in creating visualizations for the relationship between the PhilPapers and Library of Congress classification systems.

Files that serve as examples of how to structure data:
- phil_cat_dataframe.csv: one line per PhilPapers category, specified for the broader cluster of topics in which it appears and its associated LC range/category
- phil_cat_network.csv: a "from-to" list in which each PhilPapers category is connected to its broader cluster and its LC category
- phil_cat_dendro.csv: a "from-to" list in which connections are made from broad categories to smaller ones in order to create a hierarchical tree

R Scripts:
- phil_cat_dendro.R: creates a dendrogram from phil_cat_dendro.csv or a similar file
- phil_cat_colltree.R: creates a collapsible tree from phil_cat_dataframe.csv or a similar file

See "Philosophy Visual Write Up.docx" for detailed instructions on how to use the CSV and R files, how to create other types of visuals, and how to structure data for future use.
