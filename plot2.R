NEI <- readRDS("C:/Users/vibhas/R/exdata_data_NEI_data/summarySCC_PM25.rds")
SCC <- readRDS(""C:/Users/vibhas/R/exdata_data_NEI_data/Source_Classification_Code.rds")

NEI_fips  <- NEI[NEI$fips=="24510", ]

aggregated_fips <- aggregate(NEI$Emissions ~ NEI$year, data=NEI_fips, FUN=sum)

png('plot2.png')
barplot(height=aggregated_fips$Emissions, names.arg=aggregated_fips$year, xlab="years", ylab=expression('total PM'[2.5]*' emission'),main=expression('Total PM'[2.5]*' in the Baltimore City, MD emissions at various years'))
dev.off()
