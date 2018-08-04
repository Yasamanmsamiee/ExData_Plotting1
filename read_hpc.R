

#function which reads the table, convert date/times formats and extract the specific dates
read_hpc <- function (){
              hpc<- read.table("D:/datasciencecoursera/Explaratory Data Analysis/week1/household_power_consumption.txt",header=TRUE, colClasses =c("character", "character", rep("numeric",7)),na="?", sep=";")
              hpc$Time <- strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")
              hpc$Date <- as.Date(hpc$Date, "%d/%m/%Y")
              my_hpc<- hpc[hpc$Date>="2007-02-01" & hpc$Date<="2007-02-02",]
              return (my_hpc)
              }