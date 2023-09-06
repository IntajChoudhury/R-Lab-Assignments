# Problem 6 

AirPassengers

# (1)
sum(filter(AirPassengers , range(1949 , 1960)),na.rm = TRUE)


# (2)

df_copy = data.frame(AirPassengers)
years = matrix(AirPassengers,ncol = 12)
years

passengers_per_year = c(rowSums(years[,]))
plot(seq(1949,1960), passengers_per_year,xlab = 'year',ylab = 'Total passengers')


#(3)
boxplot( data.frame(years) , main = 'Boxplot for Monthly passengers')
