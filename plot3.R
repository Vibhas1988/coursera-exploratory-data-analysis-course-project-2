
  NEI <- readRDS("C:/Users/vibhas/R/exdata_data_NEI_data/summarySCC_PM25.rds")

  SCC <- readRDS("C:/Users/vibhas/R/exdata_data_NEI_data/Source_Classification_Code.rds")
  
library(ggplot2)

NEI_fips  <- NEI[NEI$fips=="24510", ]

aggregate_fips <- aggregate(Emissions ~ year + type, data=NEI_fips, FUN=sum)

png("plot3.png", width=640, height=480)
g <- ggplot(aggregate_fips, aes(NEI$year, NEI$Emissions, color = NEI$type))
g <- g + geom_line() +
  xlab("year") +
  ylab(expression('Total PM'[2.5]*" Emissions")) +
  ggtitle('Total Emissions in Baltimore City, Maryland (fips == "24510") from 1999 to 2008')
print(g)
dev.off()
