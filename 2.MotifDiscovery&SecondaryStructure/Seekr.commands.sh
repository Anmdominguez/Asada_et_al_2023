
seekr_kmer_counts Cbp80_cDNA.fa -o Cbp80.csv -k 6
Rscript ../treeview_cluster.r Cbp80.csv Cbp80.gtr Cbp80.atr Cbp80.cdt
seekr_pearson Cbp80.csv Cbp80.csv -o Cbp80_adj.csv
seekr_visualize_distro Cbp80_adj.csv Cbp80_adj.pdf
seekr_graph Cbp80_adj.csv 0.1 -g Cbp80.gml -c Cbp80_comms.csv
mkdir FASTA/ SEEKR/
mv *.fa FASTA/
mv *.* SEEKR/



seekr_kmer_counts Cbp80Hpr1_cDNA.fa -o Cbp80Hpr1.csv -k 6
Rscript ../treeview_cluster.r Cbp80Hpr1.csv Cbp80Hpr1.gtr Cbp80Hpr1.atr Cbp80Hpr1.cdt
seekr_pearson Cbp80Hpr1.csv Cbp80Hpr1.csv -o Cbp80Hpr1_adj.csv
seekr_visualize_distro Cbp80Hpr1_adj.csv Cbp80Hpr1_adj.pdf
seekr_graph Cbp80Hpr1_adj.csv 0.1 -g Cbp80Hpr1.gml -c Cbp80Hpr1_comms.csv
mkdir FASTA/ SEEKR/
mv *.fa FASTA/
mv *.* SEEKR/
