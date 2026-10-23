//Complex Calculations

float snackPrice = 0.50;
float drinkPrice = 1.20;
float changeOwed;
float totalCost = snackPrice + drinkPrice;
float mealDeal= totalCost * 0.10;
changeOwed = 10.00 - (totalCost - mealDeal);

println ("Total Change Owed: $ " + changeOwed);