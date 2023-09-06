# Problem 1

iris # Prints the whole iris dataset 

nrow(iris) #prints number of rows in iris dataset
ncol(iris) #prints number of cols in iris dataset

summary(iris$Sepal.Length) #gives summary of Sepal.length col of iris dataset
summary(iris$Sepal.Width) #gives summary of Sepal.width col of iris dataset

table(iris$Species) #Types and number of species in iris dataset

df <- subset( iris, Petal.Length > 2); df #new dataset with given condition
