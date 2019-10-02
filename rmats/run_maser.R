library(maser)

args = commandArgs(trailingOnly=TRUE)
label1 = args[[1]]
label2 = args[[2]]
########################################
############# maser object #############
########################################
maser_obj <- maser(".", c(label1, label2), ftype = "JC")
maser_coverage_filt <- filterByCoverage(maser_obj, avg_reads = 5)
maser_top_events <- topEvents(maser_coverage_filt, fdr = 0.05, deltaPSI = 0.1)
print(maser_top_events)

for (event in c("SE","A5SS","A3SS","RI","MXE")){
  top = summary(maser_top_events, type = event)
  write.table(top, quote = F, sep= "\t", row.names = F, file=paste0("sign_events_", event, ".tsv"))
}
