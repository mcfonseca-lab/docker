library(maser)

args = commandArgs(trailingOnly=TRUE)
label1 = args[[1]]
label2 = args[[2]]
min_avg_reads = args[[3]]
fdr_threshold = args[[4]]
deltaPSI_threshold = args[[5]]

########################################
############# maser object #############
########################################
maser_obj <- maser(".", c(label1, label2), ftype = "JC")
maser_coverage_filt <- filterByCoverage(maser_obj, avg_reads = min_avg_reads)
maser_top_events <- topEvents(maser_coverage_filt, fdr = fdr_threshold, deltaPSI = deltaPSI_threshold)
print(maser_top_events)

for (event in c("SE","A5SS","A3SS","RI","MXE")){
  top = summary(maser_top_events, type = event)
  write.table(top, quote = F, sep= "\t", row.names = F, file=paste0("sign_events_", event, ".tsv"))
}
