#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

#Profit for each month
profit <- revenue - expenses
profit

#Profit for each month after tax
tax <- round(0.3 * profit, digits=2)
tax

profit.after.tax <- profit - tax
profit.after.tax

#Profit margin for each month (%)
profit.margin <- round(profit.after.tax / revenue, 2) * 100
profit.margin

#Good months
mean.pat <- mean(profit.after.tax)

good.months <- profit.after.tax > mean.pat
good.months


#INCORRECT; needs to be T/F
for(i in profit.after.tax){
  if(i > mean.pat){
    print(i)
  }
}

#Bad months
bad.months <- profit.after.tax < mean.pat
#OR
bad.months <- !good.months
bad.months


#INCORRECT; needs to be T/F
for(i in profit.after.tax){
  if(i < mean(profit)){
    print(i)
  }
}

#Best month
#NOT A T/F VECTOR
best.month <- max(profit.after.tax)
best.month

#As a T/F vector
#---NOTE: max(profit...)/min(pro...) will be recycled 12 times in order to compare to PAT vector of length 12
best.month2 <- profit.after.tax == max(profit.after.tax)
best.month2


#Worst month
#NOT A T/F VECTOR
worst.month <- min(profit.after.tax)
worst.month

#As a T/F vector
worst.month2 <- profit.after.tax == min(profit.after.tax)
worst.month2

?round


#Units of thousands
revenue.1000 <- round(revenue / 1000)
expenses.1000 <- round(expenses / 1000)
profit.1000 <- round(profit / 1000)
profit.after.tax.1000 <- round(profit.after.tax / 1000)

#Output
revenue.1000
expenses.1000
profit.1000
profit.after.tax.1000
good.months
bad.months
best.month2
worst.month2

#Matrix
m <- rbind(
  revenue.1000,
  expenses.1000,
  profit.1000,
  profit.after.tax.1000,
  good.months,
  bad.months,
  best.month2,
  worst.month2
)
m










