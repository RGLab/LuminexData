# This is the most complete data:
#   layout.csv contain standards concentrations and locations
#   analyte.27.csv contains user specified analyte/bid

path<-system.file("extdata/csvtest", package="LumiR")
bl<-read.experiment(path)
sl<-slummarize(bl)

msl<-melt(sl)
msl.ss<-subset(msl,tolower(sample_type)=="standard")
ggplot2::ggplot(msl.ss, ggplot2::aes(color=plate), alpha=0.5)+ggplot2::scale_x_log10()+ggplot2::scale_y_log10()+ggplot2::facet_wrap(~analyte)+geom_sc(sl)    +ggplot2::geom_point(ggplot2::aes(x=concentration, y=mfi))

plot_layout(sl, plate_name="plate2", fill="sample_type")
