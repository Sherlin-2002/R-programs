install.packages('ggplot2');
library(ggplot2)
data(mtcars)
head(mtcars)

# Bar Diagram

ggplot(mtcars, aes(x = factor(cyl))) +
  geom_bar() +
  theme_minimal() +
  ggtitle('Bar Diagram of Cylinders') +
  xlab('Number of Cylinders') +
  ylab('Count')

# Pie Chart

cyl_count &lt;- table(cars_data$cyl)
cyl_labels &lt;- paste(names(cyl_count), '\n', cyl_count, sep='')
pie(cyl_count, labels = cyl_labels, main = 'Pie Chart of Cylinders', col = rainbow(length(cyl_count)))


# Histogram

ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(binwidth = 2, fill = 'blue', color = 'black') +
  theme_minimal() +
  ggtitle('Histogram of MPG') +
  xlab('Miles Per Gallon') +
  ylab('Count')

# Boxplot

ggplot(mtcars, aes(x = factor(cyl), y = hp)) +
  geom_boxplot() +
  theme_minimal() +
  ggtitle('Boxplot of Horsepower by Cylinders') +
  xlab('Number of Cylinders') +
  ylab('Horsepower')

# Scatter Plot

ggplot(mtcars, aes(x = wt, y = mpg, color = factor(gear))) +
  geom_point() +
  theme_minimal() +
  ggtitle('Scatter Plot of Weight vs MPG') +
  xlab('Weight (1000 lbs)') +
  ylab('Miles Per Gallon') +
  labs(color = 'Number of Gears')

