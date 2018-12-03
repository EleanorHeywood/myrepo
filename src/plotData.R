# write a pdf of a plot
pdf(file = "mypdf.pdf")
hist(mtcars$disp)
dev.off()
