# Exercise 5: Gates Foundation Educational Grants

# Read data into a variable called `grants` using the `read.csv` function

gates <- read.csv(file = "data/gates_money.csv", stringsAsFactors = FALSE)

# Use the View function to look at your data

View(gates)
# Create a variable `spending` as the `total_amount` column of the dataset

spending <- gates$total_amount

# Confirm that your `spending` variable is a vector using the `is.vector` function

is.vector(spending)

# Create a variable `org` as the `organization` column of the dataset.
# Unfortunately, it will not be a vector by default, so you must transform it using the as.vector function

org <- as.vector(gates$organization)


### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?

mean.grant <- mean(gates$total_amount)

# What was the dollar amount of the largest grant?

largest.grant <- max(gates$total_amount)

# What was the dollar amount of the smallest grant?

smallest.grant <- min(gates$total_amount)

# Which organization received the largest grant?

temp <- rownames(gates)[gates[["total_amount"]] == largest.grant]
temp2 <- gates[255, 3]

temp2

max.grant.org <- gates[rownames(gates)[gates[["total_amount"]] == largest.grant] , "organization"]

# Which organization received the smallest grant?

min.grant.org <- gates[rownames(gates)[gates[["total_amount"]] == smallest.grant] , "organization"]

# How many grants were awarded in 2010?

total.grants <- nrow(gates)
