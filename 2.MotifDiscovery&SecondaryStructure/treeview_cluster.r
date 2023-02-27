make_treeview <- function(csv, out_gtr, out_atr, out_cdt){
  library(amap)
  library(ctc)
  kmers <- read.csv(csv, header=TRUE, row.names=1)
  kmers <- round(scale(kmers, scale=FALSE), 6)
  # Generate distance matrix using pearson distance
  dist_mat <- Dist(kmers, method="correlation", nbproc=4)
  dist_mat_trans <- Dist(t(kmers), method="correlation", nbproc=4)
  # Clustering using average agglomeration method
  clust_row <- hclust(dist_mat,method="average")
  clust_col <- hclust(dist_mat_trans,method="average")
  # Exporting the gtr, atr and cdt files
  r2gtr(clust_row,file=out_gtr, distance=clust_row$dist.method, dec='.', digits=5)
  r2atr(clust_col,file=out_atr, distance=clust_col$dist.method, dec='.', digits=5)
  r2cdt(clust_row, clust_col, kmers, labels=FALSE, description=FALSE, file=out_cdt, dec='.')
}
args <- commandArgs(trailingOnly = TRUE)
do.call(make_treeview, as.list(args))