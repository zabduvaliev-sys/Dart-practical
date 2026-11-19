
void main() {
  // Задание 1. Студент
  print('ЗАДАНИЕ 1. СТУДЕНТ');

  Student student = Student(
    name: 'Азамат',
    age: 18,
    grade: 5,
  );

  student.printInfo();
  student.checkGrade();

  // Задание 2. Банковский счёт
  print('\nЗАДАНИЕ 2. БАНКОВСКИЙ СЧЁТ');

  BankAccount account = BankAccount(
    owner: 'Алина',
    balance: 5000,
  );

  account.printBalance();

  account.deposit(2000);
  account.printBalance();

  account.withdraw(3000);
  account.printBalance();

  account.withdraw(10000);
  account.printBalance();

  // Задание 3. Автомобиль
  print('\nЗАДАНИЕ 3. АВТОМОБИЛЬ');

  Car car = Car(
    brand: 'Toyota',
    year: 2020,
    mileage: 50000,
  );

  car.printInfo();

  print('\nПосле поездки на 150 км:');
  car.drive(150);
  car.printInfo();
}

// Класс Student
class Student {
  String name;
  int age;
  int grade;

  Student({
    required this.name,
    required this.age,
    required this.grade,
  });

  void printInfo() {
    print('Имя: $name');
    print('Возраст: $age');
    print('Оценка: $grade');
  }

  void checkGrade() {
    if (grade == 4 || grade == 5) {
      print('Хорошая оценка');
    } else {
      print('Нужно подтянуть знания');
    }
  }
}

// Класс BankAccount
class BankAccount {
  String owner;
  double balance;

  BankAccount({
    required this.owner,
    required this.balance,
  });

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Пополнение: $amount сом');
    } else {
      print('Сумма пополнения должна быть больше нуля');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && balance >= amount) {
      balance -= amount;
      print('Снятие: $amount сом');
    } else {
      print('Недостаточно средств');
    }
  }

  void printBalance() {
    print('Владелец: $owner');
    print('Баланс: $balance сом');
  }
}

// Класс Car
class Car {
  String brand;
  int year;
  int mileage;

  Car({
    required this.brand,
    required this.year,
    required this.mileage,
  });

  void printInfo() {
    print('Марка: $brand');
    print('Год выпуска: $year');
    print('Пробег: $mileage км');
  }

  void drive(int distance) {
    if (distance > 0) {
      mileage += distance;
    } else {
      print('Расстояние должно быть больше нуля');
    }
  }
}
