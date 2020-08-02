tot.emissions.baltimore <- NEI %>%
  subset(fips == "24510") %>%
  group_by(year) %>%
  summarize(Total.Emissions.Baltimore = sum(Emissions, 
                                            na.rm = TRUE))

with(tot.emissions.baltimore, 
     plot(x = year, 
          y = Total.Emissions.Baltimore, 
          ylab = "Total Annual Emissions [Tons]", 
          xlab = "Year",
          main = "Total Annual Emissions in Baltimore by Year",
          cex = 2,
          pch = 2,
          col = "red",
          lwd = 3))

tot.emissions.baltimore

# Find delta between 2008 and 1999
tot.emissions.2008 <- tot.emissions.baltimore[tot.emissions.baltimore$year == 2008, 2]
tot.emissions.1999 <- tot.emissions.baltimore[tot.emissions.baltimore$year == 1999, 2]

delta.tot.emissions <- tot.emissions.2008 - tot.emissions.1999

delta.tot.emissions