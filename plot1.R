NEI <- readRDS("C:/Users/vibhas/R/exdata_data_NEI_data/summarySCC_PM25.rds")
SCC <- readRDS("C:/Users/vibhas/R/exdata_data_NEI_data/Source_Classification_Code.rds")

Total_emission <- aggregate(Emissions ~ year, data=NEI, FUN=sum)

png('plot1.png')
barplot(height=Total_emission$Emissions, names.arg=Total_emission$year, xlab="years", ylab=expression('total PM'[2.5]*' emission'),main=expression('Total PM2.5 Emissions From All US Sources'))
dev.off()
