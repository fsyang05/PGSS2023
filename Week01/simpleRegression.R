# Load required packages
library(readr)

iris_df <- read_csv("PGSS_2023/iris.csv", col_names = c("Petal.Length", "Petal.Width", "Sepal.Length", "Sepal.Width", "Species"))

# Make a model to relate sepal.length to petal.length
model = lm (Sepal.Length ~ Petal.Length, data = iris_df)

plot(iris_df$Petal.Length, iris_df$Sepal.Length)
abline(model)

par(mfrow= c(2,2))
plot(model)