
void main() {
  // Задание 1. Подсчёт расходов
  List<int> expenses = [500, 1200, 300, 800, 1500, 400, 700];

  int totalExpenses = 0;
  int maxExpense = expenses[0];
  int expensesAbove700 = 0;

  for (int i = 0; i < expenses.length; i++) {
    totalExpenses += expenses[i];

    if (expenses[i] > maxExpense) {
      maxExpense = expenses[i];
    }

    if (expenses[i] > 700) {
      expensesAbove700++;
    }
  }

  print('ЗАДАНИЕ 1. ПОДСЧЁТ РАСХОДОВ');
  print('Общая сумма расходов: $totalExpenses сом');
  print('Самый большой расход: $maxExpense сом');
  print('Количество расходов больше 700 сом: $expensesAbove700');

  // Задание 2. Поиск товара
  print('\nЗАДАНИЕ 2. ПОИСК ТОВАРА');

  findProduct('Рис');
  findProduct('Сахар');

  // Задание 3. Список оценок студентов
  List<int> grades = [5, 4, 3, 5, 2, 4, 5, 3];

  int countFives = 0;
  int countTwos = 0;
  int sumGrades = 0;
  List<int> goodGrades = [];

  for (int i = 0; i < grades.length; i++) {
    sumGrades += grades[i];

    if (grades[i] == 5) {
      countFives++;
    }

    if (grades[i] == 2) {
      countTwos++;
    }

    if (grades[i] == 4 || grades[i] == 5) {
      goodGrades.add(grades[i]);
    }
  }

  double averageGrade = sumGrades / grades.length;

  print('\nЗАДАНИЕ 3. ОЦЕНКИ СТУДЕНТОВ');
  print('Количество пятёрок: $countFives');
  print('Количество двоек: $countTwos');
  print('Средний балл: $averageGrade');
  print('Хорошие оценки: $goodGrades');

  // Задание 4. Банкомат
  print('\nЗАДАНИЕ 4. БАНКОМАТ');

  List<int> withdrawals = [1500, 2000, 3000, 2500, 2000];

  int balance = 10000;
  int index = 0;

  while (index < withdrawals.length) {
    int withdrawal = withdrawals[index];

    if (balance >= withdrawal) {
      balance -= withdrawal;
      print('Снятие: $withdrawal сом. Остаток: $balance сом');
    } else {
      print('Недостаточно средств для снятия $withdrawal сом');
    }

    index++;
  }

  print('Итоговый остаток: $balance сом');
}

// Функция поиска товара
void findProduct(String productName) {
  List<String> products = [
    'Хлеб',
    'Молоко',
    'Яблоки',
    'Рис',
    'Мясо'
  ];

  bool found = false;

  for (int i = 0; i < products.length; i++) {
    if (products[i] == productName) {
      print('Товар найден');
      print('Номер товара: ${i + 1}');
      found = true;
      break;
    }
  }

  if (found == false) {
    print('Товар не найден');
  }
}
