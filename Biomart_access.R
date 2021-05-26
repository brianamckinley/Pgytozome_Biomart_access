BiocManager::install("biomaRt")
library("biomaRt")

phytozomeMart <- new("Mart", 
                     biomart = "phytozome_mart_archive",
                     vschema = "zome_mart", 
                     host = "https://phytozome.jgi.doe.gov:443/biomart/martservice")

mysets <- listDatasets(phytozomeMart)
mysets
mydataset <- mysets$dataset[mysets$dataset == "Sbicolor_313"]
mydataset
myusemart <- useDataset(as.character(mydataset), mart = phytozomeMart)
myusemart
allattributes <- listAttributes(mart = myusemart)
allattributes
resultTable <- getBM(attributes = "peptide_name", mart = myusemart)







