#xPonent 1.x Multiplate with specified analyte and layout
bl<-read.experiment("csvtest")
sl<-slummarize(bl)
msl<-melt(sl)
msl.ss<-subset(msl,tolower(sample_type)=="standard")
ggplot2::ggplot(msl.ss, ggplot2::aes(color=plate), alpha=0.5)+ggplot2::scale_x_log10()+ggplot2::scale_y_log10()+ggplot2::facet_wrap(~analyte)+geom_sc(sl)    +ggplot2::geom_point(ggplot2::aes(x=concentration, y=mfi))
plot_layout(sl, plate_name="plate1", fill="sample_type")

#BioPlex with specified analyte and layout
bl<-read.experiment("YALE")
sl<-slummarize(bl)
msl<-melt(sl)
msl.ss<-subset(msl,tolower(sample_type)=="standard")
ggplot2::ggplot(msl.ss, ggplot2::aes(color=plate), alpha=0.5)+ggplot2::scale_x_log10()+ggplot2::scale_y_log10()+ggplot2::facet_wrap(~analyte)+geom_sc(sl)    +ggplot2::geom_point(ggplot2::aes(x=concentration, y=mfi))
plot_layout(sl, plate_name="plate1", fill="sample_type")

#xPonent 3.x without mapping
setup_templates("LENA")
bl<-read.experiment("LENA")
