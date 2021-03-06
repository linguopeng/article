###########1.carbohydrate ncbi120_ABC transporter permease#########
strain_ABC<-read.table("ncbi120_ABC_out.txt",header = F)
library(tidyverse)
strain_ABC<-separate(data=strain_ABC, col=V1, into=c("strain","gene"), sep = "_")
colnames(strain_ABC) <- c('strain', 'query',"subject","identity","Match_length",
                              "Mismatch_length","gap","query_start","query_end","subject_start",
                              "subject_end","e-vaule","bitscore")
strain_ABC<-arrange(strain_ABC,desc(identity)) %>% as_tibble() %>%  filter(identity > 40 & Match_length >70 ) 
strain_ABC<-strain_ABC[!duplicated(strain_ABC$query),] 
strain_ABC_count = as.data.frame(table(strain_ABC$strain))
colnames(strain_ABC_count)<-c('strain',"count")
strain_ABC_count<-arrange(strain_ABC_count,desc(count)) %>% as_tibble() 
strain_ABC_count_12<-filter(strain_ABC_count, strain == "FNXHL2M3" | strain == "FJSNT37M5"
                            | strain == "A14" | strain == "FFJND7M3"
                            | strain == "FHuNMY10M3" | strain == "FSHXXA2M9"
                            | strain == "FFJND17M1" | strain == "FFJNDD6M2"
                            | strain == "FQHXN83M4" | strain == "FAHBZ9L5"
                            | strain == "FGSYC12M4" | strain == "FHNXY15M2")
###################2.ncbi120_MFS transporter#
strain_MFS<-read.table("ncbi120_MFS_out.txt",header = F)
library(tidyverse)
strain_MFS<-separate(data=strain_MFS, col=V1, into=c("strain","gene"), sep = "_")
colnames(strain_MFS) <- c('strain', 'query',"subject","identity","Match_length",
                          "Mismatch_length","gap","query_start","query_end","subject_start",
                          "subject_end","e-vaule","bitscore")
strain_MFS<-arrange(strain_MFS,desc(identity)) %>% as_tibble() %>%  filter(identity > 40 & Match_length >70 ) 
strain_MFS<-strain_MFS[!duplicated(strain_MFS$query),] #
strain_MFS_count = as.data.frame(table(strain_MFS$strain))
colnames(strain_MFS_count)<-c('strain',"count")
strain_MFS_count<-arrange(strain_MFS_count,desc(count)) %>% as_tibble() 
strain_MFS_count_12<-filter(strain_MFS_count, strain == "FNXHL2M3" | strain == "FJSNT37M5"
                            | strain == "A14" | strain == "FFJND7M3"
                            | strain == "FHuNMY10M3" | strain == "FSHXXA2M9"
                            | strain == "FFJND17M1" | strain == "FFJNDD6M2"
                            | strain == "FQHXN83M4" | strain == "FAHBZ9L5"
                            | strain == "FGSYC12M4" | strain == "FHNXY15M2")
###################3.ncbi120_glycosyltransferase#
strain_glycosyltransferase<-read.table("ncbi120_glycosyltransferase_out.txt",header = F)
library(tidyverse)
strain_glycosyltransferase<-separate(data=strain_glycosyltransferase, col=V1, into=c("strain","gene"), sep = "_")
colnames(strain_glycosyltransferase) <- c('strain', 'query',"subject","identity","Match_length",
                          "Mismatch_length","gap","query_start","query_end","subject_start",
                          "subject_end","e-vaule","bitscore")
strain_glycosyltransferase<-arrange(strain_glycosyltransferase,desc(identity)) %>% as_tibble() %>%  filter(identity > 40 & Match_length >70 ) 
strain_glycosyltransferase<-strain_glycosyltransferase[!duplicated(strain_glycosyltransferase$query),] #
strain_glycosyltransferase_count = as.data.frame(table(strain_glycosyltransferase$strain))
colnames(strain_glycosyltransferase_count)<-c('strain',"count")
strain_glycosyltransferase_count<-arrange(strain_glycosyltransferase_count,desc(count)) %>% as_tibble() 
strain_glycosyltransferase_count_12<-filter(strain_glycosyltransferase_count, strain == "FNXHL2M3" | strain == "FJSNT37M5"
                                            | strain == "A14" | strain == "FFJND7M3"
                                            | strain == "FHuNMY10M3" | strain == "FSHXXA2M9"
                                            | strain == "FFJND17M1" | strain == "FFJNDD6M2"
                                            | strain == "FQHXN83M4" | strain == "FAHBZ9L5"
                                            | strain == "FGSYC12M4" | strain == "FHNXY15M2")
###################4.ncbi120_galactosidase############
strain_galactosidase<-read.table("ncbi120_galactosidase_out.txt",header = F)
library(tidyverse)
strain_galactosidase<-separate(data=strain_galactosidase, col=V1, into=c("strain","gene"), sep = "_")
colnames(strain_galactosidase) <- c('strain', 'query',"subject","identity","Match_length",
                                          "Mismatch_length","gap","query_start","query_end","subject_start",
                                          "subject_end","e-vaule","bitscore")
strain_galactosidase<-arrange(strain_galactosidase,desc(identity)) %>% as_tibble() %>%  filter(identity > 40 & Match_length >70 )
strain_galactosidase<-strain_galactosidase[!duplicated(strain_galactosidase$query),] #
strain_galactosidase_count = as.data.frame(table(strain_galactosidase$strain))
colnames(strain_galactosidase_count)<-c('strain',"count")
strain_galactosidase_count<-arrange(strain_galactosidase_count,desc(count)) %>% as_tibble() 
strain_galactosidase_count_12<-filter(strain_galactosidase_count, strain == "FNXHL2M3" | strain == "FJSNT37M5"
                                      | strain == "A14" | strain == "FFJND7M3"
                                      | strain == "FHuNMY10M3" | strain == "FSHXXA2M9"
                                      | strain == "FFJND17M1" | strain == "FFJNDD6M2"
                                      | strain == "FQHXN83M4" | strain == "FAHBZ9L5"
                                      | strain == "FGSYC12M4" | strain == "FHNXY15M2")

###################5.ncbi120_alpha-galactosidase_out############
strain_alpha_galactosidase<-read.table("ncbi120_alpha-galactosidase_out.txt",header = F)
library(tidyverse)
strain_alpha_galactosidase<-separate(data=strain_alpha_galactosidase, col=V1, into=c("strain","gene"), sep = "_")
colnames(strain_alpha_galactosidase) <- c('strain', 'query',"subject","identity","Match_length",
                                    "Mismatch_length","gap","query_start","query_end","subject_start",
                                    "subject_end","e-vaule","bitscore")
strain_alpha_galactosidase<-arrange(strain_alpha_galactosidase,desc(identity)) %>% as_tibble() %>%  filter(identity > 40 & Match_length >70 )
strain_alpha_galactosidase<-strain_alpha_galactosidase[!duplicated(strain_alpha_galactosidase$query),] #
strain_alpha_galactosidase_count = as.data.frame(table(strain_alpha_galactosidase$strain))
colnames(strain_alpha_galactosidase_count)<-c('strain',"count")
strain_alpha_galactosidase_count<-arrange(strain_alpha_galactosidase_count,desc(count)) %>% as_tibble() 
strain_alpha_galactosidase_count_12<-filter(strain_alpha_galactosidase_count, strain == "FNXHL2M3" | strain == "FJSNT37M5"
                                            | strain == "A14" | strain == "FFJND7M3"
                                            | strain == "FHuNMY10M3" | strain == "FSHXXA2M9"
                                            | strain == "FFJND17M1" | strain == "FFJNDD6M2"
                                            | strain == "FQHXN83M4" | strain == "FAHBZ9L5"
                                            | strain == "FGSYC12M4" | strain == "FHNXY15M2")
###################6.ncbi120_beta-galactosidase_out############
strain_beta_galactosidase<-read.table("ncbi120_beta-galactosidase_out.txt",header = F)
#install.packages("tidyverse")
library(tidyverse)
strain_beta_galactosidase<-separate(data=strain_beta_galactosidase, col=V1, into=c("strain","gene"), sep = "_")
colnames(strain_beta_galactosidase) <- c('strain', 'query',"subject","identity","Match_length",
                                          "Mismatch_length","gap","query_start","query_end","subject_start",
                                          "subject_end","e-vaule","bitscore")
strain_beta_galactosidase<-arrange(strain_beta_galactosidase,desc(identity)) %>% as_tibble() %>%  filter(identity > 40 & Match_length >70 )
strain_beta_galactosidase<-strain_beta_galactosidase[!duplicated(strain_beta_galactosidase$query),] #
strain_beta_galactosidase_count = as.data.frame(table(strain_beta_galactosidase$strain))
colnames(strain_beta_galactosidase_count)<-c('strain',"count")
strain_beta_galactosidase_count<-arrange(strain_beta_galactosidase_count,desc(count)) %>% as_tibble() 
strain_beta_galactosidase_count_12<-filter(strain_beta_galactosidase_count, strain == "FNXHL2M3" | strain == "FJSNT37M5"
                                           | strain == "A14" | strain == "FFJND7M3"
                                           | strain == "FHuNMY10M3" | strain == "FSHXXA2M9"
                                           | strain == "FFJND17M1" | strain == "FFJNDD6M2"
                                           | strain == "FQHXN83M4" | strain == "FAHBZ9L5"
                                           | strain == "FGSYC12M4" | strain == "FHNXY15M2")
df1<-inner_join(strain_ABC_count_12,
                strain_MFS_count_12,
                by="strain")
df2<-inner_join(df1,
                strain_glycosyltransferase_count_12,
                by="strain")
df3<-inner_join(df2,
                strain_galactosidase_count_12,
                by="strain")
df4<-inner_join(df3,
                strain_alpha_galactosidase_count_12,
                by="strain")
df5<-inner_join(df4,
                strain_beta_galactosidase_count_12,
                by="strain")
colnames(df5)<-c("strain","ABC","MFS","gly","gal","a_gal","b_gal")

write_csv(df5,"df220423.csv")
q1<-read.csv("df220423.csv",header = T,row.names = 1)
##########
q2<-q1
#q2<-t(q2)
#install.packages("pheatmap")
library(pheatmap)
q3<-pheatmap(q2)
#q2<-t(q2)
library(ggplot2)
#ggsave("p2.pdf",p3,width=15,height=4)
#ggsave("p2.png",p3,width=60,height=8)
#ggsave("q3.png",p3, width = 40, height = 12, units = "cm")
ggsave("p220423.pdf",q3, width = 6.64, height = 5.73, units = "in")
