source("sceasy_seurat2anndata.R")

neocortex <- read_rds("neocortex_full_v3.2.3_schema2.0_ensembl_ids_scale.rds") 
#128gb

seurat2anndata(neocortex, 
               outFile = "neocortex_full_v3.2.3_schema2.0_ensembl.h5ad", 
               main_layer = "scale.data", transfer_layers = "counts", 
               drop_single_values = FALSE)
