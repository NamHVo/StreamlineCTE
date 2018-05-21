drop I

br

sum

twoway scatter TotalTimeY AgeoftheChamberYears

twoway scatter TotalTimeY AgeoftheTestTrayYears

twoway scatter TotalTimeY OperatorExperienceYears

twoway scatter TotalTimeY HoursOperatorWorkedHours

gen logOpEX = log( OperatorExperienceYears)


reg TotalTimeY AgeoftheChamberYears

reg TotalTimeY AgeoftheChamberYears AgeoftheTestTrayYears

reg TotalTimeY AgeoftheChamberYears AgeoftheTestTrayYears OperatorExperienceYears HoursOperatorWorkedHours

reg TotalTimeY AgeoftheChamberYears AgeoftheTestTrayYears logOpEX HoursOperatorWorkedHours

correl AgeoftheChamberYears AgeoftheTestTrayYears OperatorExperienceYears HoursOperatorWorkedHours AmountofLettersinOperatorsF

estat hettest
