
void main() {
  // Задача 1. Продажа малины
  int raspberryBoxes = 10;
  int kilogramsPerBox = 5;
  double pricePerKg = 250;

  double totalRaspberryPrice =
      raspberryBoxes * kilogramsPerBox * pricePerKg;

  print('Задача 1. Продажа малины');
  print('Общая стоимость: $totalRaspberryPrice сом');

  // Задача 2. Покупка билетов
  int adults = 2;
  int children = 3;
  int adultTicketPrice = 350;
  int childTicketPrice = 200;

  int totalTicketPrice =
      adults * adultTicketPrice + children * childTicketPrice;

  print('\nЗадача 2. Билеты в кино');
  print('Общая стоимость: $totalTicketPrice сом');

  // Задача 3. Расход бензина
  double fuelConsumption = calculateFuelConsumption(30, 167);

  print('\nЗадача 3. Расход бензина');
  print('Расход: ${fuelConsumption.toStringAsFixed(2)} л/100 км');

  // Задача 4. Кешбэк
  double cashback = calculateCashback(3000, 45);

  print('\nЗадача 4. Кешбэк');
  print('Кешбэк: ${cashback.toStringAsFixed(2)}%');

  // Задача 5. Банановый коктейль
  double calories = calculateCocktailCalories(75, 300, 220);

  print('\nЗадача 5. Банановый коктейль');
  print('Калорийность: ${calories.toStringAsFixed(0)} ккал');

  // Задача 6. Печать чека
  printReceipt();
}

// Задача 3
double calculateFuelConsumption(double liters, double kilometers) {
  return liters / kilometers * 100;
}

// Задача 4
double calculateCashback(double purchaseAmount, double cashbackAmount) {
  return cashbackAmount / purchaseAmount * 100;
}

// Задача 5
double calculateCocktailCalories(
    double bananaCalories, double milkMl, double milkCaloriesPerLiter) {
  double milkCalories = milkMl / 1000 * milkCaloriesPerLiter;
  return bananaCalories + milkCalories;
}

// Задача 6
void printReceipt() {
  int carrotPrice = 120;
  int meatPrice = 850;
  int ricePrice = 240;

  int total = carrotPrice + meatPrice + ricePrice;

  print('\n========== ЧЕК ==========');
  print('');
  print('1. Морковь = $carrotPrice сом');
  print('2. Мясо    = $meatPrice сом');
  print('3. Рис     = $ricePrice сом');
  print('');
  print('-------------------------');
  print('Итого: $total сом');
  print('=========================');
}
