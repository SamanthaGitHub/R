#Salary
myplot(Salary)
myplot(Salary/Games) #skewed due to injuries(Kobe and Kevin)
myplot(Salary/FieldGoals) #skewed due to injuries(Kobe and Kevin)

#In-Game Metrics
myplot(MinutesPlayed) #skewed; avoid by NORMAILIZING
myplot(Points) #skewed; avoid by NORMAILIZING

#In-Game Metrics Normalized
myplot(FieldGoals/Games)
myplot(FieldGoals/FieldGoalAttempts)
myplot(FieldGoalAttempts/Games)
#---DwightHoward was very accurate, but didn't make a lot of shots
myplot(Points/Games)

#Interesting Observation
myplot(MinutesPlayed/Games)
#---trends downward in later years in career; playing less minutes per game
myplot(Games)
#---stays consistent; playing same number of games

#Efficiency of Players
myplot(FieldGoals/MinutesPlayed)

#Player Style / Types of Baskets Made
myplot(Points/FieldGoals) #could exclude free throws for more meaningful data
