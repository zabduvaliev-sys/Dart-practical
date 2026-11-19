
import 'dart:math';

void main() {
  // Задание 1. Куда поедем сначала?
  choosePoint(15, 25);

  // Задание 2. Какая точка дальше?
  choosePointByCoordinates(3, 4, 6, 8);

  // Задание 3. Расчёт стоимости доставки
  calculateDelivery(15, 3000);
  calculateDelivery(5, 6000);

  // Задание 4. Хватит ли бензина?
  canReachDestination(10, 200, 8);
  canReachDestination(20, 100, 8);
}

// Задание 1
void choosePoint(double distanceA, double distanceB) {
  if (distanceA > distanceB) {
    print('Сначала едем в точку A.');
  } else {
    print('Сначала едем в точку B.');
  }
}

// Задание 2
void choosePointByCoordinates(
    double xA, double yA, double xB, double yB) {
  double distanceA = sqrt(xA * xA + yA * yA);
  double distanceB = sqrt(xB * xB + yB * yB);

  print('\nРасстояние до точки A: ${distanceA.toStringAsFixed(2)} км');
  print('Расстояние до точки B: ${distanceB.toStringAsFixed(2)} км');

  if (distanceA > distanceB) {
    print('Сначала едем в точку A.');
  } else {
    print('Сначала едем в точку B.');
  }
}

// Задание 3
void calculateDelivery(double distance, double orderAmount) {
  double deliveryPrice;

  if (orderAmount >= 5000) {
    deliveryPrice = 0;
  } else if (distance > 10) {
    deliveryPrice = 500;
  } else {
    deliveryPrice = 200;
  }

  double totalAmount = orderAmount + deliveryPrice;

  print('\nДоставка: $deliveryPrice сом');
  print('Итого: $totalAmount сом');
}

// Задание 4
void canReachDestination(
    double fuelAmount, double distance, double fuelConsumption) {
  double requiredFuel = distance * fuelConsumption / 100;

  print('\nНеобходимо бензина: ${requiredFuel.toStringAsFixed(2)} литров');

  if (fuelAmount >= requiredFuel) {
    print('Доедем до пункта назначения.');
  } else {
    double shortage = requiredFuel - fuelAmount;

    print('Бензина не хватит.');
    print('Не хватает: ${shortage.toStringAsFixed(2)} литров.');
  }
}
