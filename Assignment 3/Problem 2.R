# Problem 2





# (i)



data("mtcars")
View(mtcars)

#check the dimensions (rows and colums)
dim(mtcars)

#No of rows in mtcars data set
nrow(mtcars)

#No of variables (column) in mtcars data set
ncol(mtcars)





# (ii)



# Convert column names to uppercase
colnames(mtcars) <- toupper(colnames(mtcars))

# Check the updated column names
colnames(mtcars)





# (iii)



# Subset columns that end in "p" and call it pvars
pvars <- subset(mtcars, select = endsWith(names(mtcars), "p"))

# Display the subsetted columns
pvars





# (iv)



# Subset the dataset to select specific columns
carsSub <- mtcars[, c("WT", "QSEC", "HP")]
View(carsSub)

# Check the dimensions of the subsetted dataset
dim(carsSub)



# (v)



# Subset rows with more than 20 mpg
high_MPG_cars <- mtcars[mtcars$MPG > 20, ]
View(high_MPG_cars)

# Count the number of rows in the subset
nrow(high_MPG_cars)





# (vi)



# Subset rows with less than 16 mpg and more than 100 hp
subset_Cars <- mtcars[mtcars$MPG < 16 & mtcars$HP > 100, ]
View(subset_Cars)

# Count the number of rows in the subset
nrow(subset_Cars)





# (vii)



# Subset the dataset to select specific columns and cars with 8 cylinders
cars_Sub <- mtcars[mtcars$CYL == 8, c("WT", "QSEC", "HP")]

View(cars_Sub)

# Check the dimensions of the subsetted dataset
dim(cars_Sub)





# (viii)





# Re-order the rows of carsSub by weight in increasing order
ccars_Sub <- carsSub[order(carsSub$WT), ]

View(ccars_Sub)





# (ix)



# Create a new variable in carsSub called which assign to wi2
#Take the variable as carsSubs1

carsSub1 <- mtcars[, c("WT", "QSEC", "HP")]
carsSub1$WT2 <- carsSub1$WT

#Display carsSub1
View(carsSub1)
