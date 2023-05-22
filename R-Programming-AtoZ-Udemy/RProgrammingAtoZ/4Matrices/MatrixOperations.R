

Games
rownames(Games)
colnames(Games)
Games["LeBronJames", "2012"]

FieldGoals

#baskets per game, rounded
round(FieldGoals / Games, 1) 

#minutes per game
MinutesPlayed
round(MinutesPlayed / Games)

#field goals per field goal attempts
round(FieldGoalAttempts / FieldGoals, 1)
