import "dart:io";

void main() {
  // Start Menu
  print(Process.runSync("clear", [], runInShell: true).stdout);
  print(" Welcome To This Miny Games");
  print("----------------------------");
  print("1. How Many Years To Get 100 Years ?");
  print("2. This Number Is Even Or Odd ?");
  print("3. What is Multiples Of This Number ?");
  print("4. This Word Is Palindrom or Not ?");
  print("5. Simple Calculator");
  print("6. Converting minutes to seconds");
  print("7. Find Perimeter And Area For The Shape");
  print(" ");
  stdout.write("Chose A Number : ");
  int? number = int.parse(stdin.readLineSync()!);

  // Chose Conditions
  switch (number) {
    case 1:
      print(Process.runSync("clear", [], runInShell: true).stdout);
      print(" How Many Years To Be 100 Years Old ?");
      print("--------------------------------------");
      howManyYearsToGet100y();
      break;

    case 2:
      print(Process.runSync("clear", [], runInShell: true).stdout);
      print(" This Number Is Even Or Odd ?");
      print("--------------------------------");
      thisNumberIsEvenOrOdd();
      break;

    case 3:
      print(Process.runSync("clear", [], runInShell: true).stdout);
      print(" What is Multiples Of This Number ?");
      print("------------------------------------");
      multiplesOfNumber();
      break;

    case 4:
      print(Process.runSync("clear", [], runInShell: true).stdout);
      print(" This Word Is Palindrom or Not ?");
      print("---------------------------------");
      palindromOrNot();
      break;

    case 5:
      print(Process.runSync("clear", [], runInShell: true).stdout);
      print(" Simple Calculator");
      print("-------------------");
      simpleCalculator();

    case 6:
      print(Process.runSync("clear", [], runInShell: true).stdout);
      print(" Converting minutes to seconds");
      print("-------------------------------");
      convertingMinToSec();
      break;

    case 6:
      print(Process.runSync("clear", [], runInShell: true).stdout);
      print("Find Perimeter And Area For The Shape");
      print("--------------------------------------");
      perimeterAndArea();
      break;

    default:
      print("Wrong Number Please Try Again");
  }
}

void howManyYearsToGet100y() {
  // Inputs
  stdout.write("Your Name : ");
  String? name = stdin.readLineSync();
  stdout.write("Your Age : ");
  int? age = int.parse(stdin.readLineSync()!);

  // Conditions
  if (age < 100) {
    print(
        "Hello mr ${name} you are now ${age} and you have to wait ${100 - age} to be 100 years old");
  } else if (age == 100) {
    print("You are already 100 years mr ${name}");
  } else if (age > 100) {
    print("You are older thane 100 years mr ${name}");
  }
}

void thisNumberIsEvenOrOdd() {
  // Inputs
  stdout.write("Enter The Number : ");
  int? number = int.parse(stdin.readLineSync()!);

  // Conditions
  if (number % 2 == 0) {
    print("This Number Is Even");
  } else if (number % 2 == 1) {
    print("This Number Is Odd");
  }
}

void multiplesOfNumber() {
  stdout.write("Enter The Number : ");
  int? number = int.parse(stdin.readLineSync()!);
  print([
    for (int i = 1; i <= number; i++)
      if (number % i == 0) i
  ]);
}

void palindromOrNot() {
  stdout.write("Enter The Word : ");
  String word = stdin.readLineSync()!.toLowerCase();
  String reversedWord = word.split('').reversed.join();
  if (reversedWord == word) {
    print('This Word Is Palindrom');
  } else {
    print('This Word Is Not Palindrom');
  }
}

void simpleCalculator() {
  stdout.write('Enter The First Number : ');
  double? num1 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter The Second Number : ');
  double? num2 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter The Calculation Sign : ');
  String? calculationSign = stdin.readLineSync();

  if (calculationSign == '+') {
    print('$num1 + $num2 = ${num1 + num2}');
  } else if (calculationSign == '-') {
    print('$num1 - $num2 = ${num1 - num2}');
  } else if (calculationSign == '*') {
    print('$num1 x $num2 = ${num1 * num2}');
  } else if (calculationSign == '/') {
    print('$num1 ÷ $num2 = ${num1 / num2}');
  }

  if (num1 == 0 && num2 == 0 && calculationSign == '/') {
    print('Math Error "Indeterminate"');
  } else if (num2 == 0 && calculationSign == '/') {
    print('Math Error "ComplexInfinity"');
  }
}

void pramidsOfStars() {
  int n = 0;

  while (n == 0) {
    stdout.write('Enter the number of lines: ');
    int? n = int.parse(stdin.readLineSync()!);
    for (int i = 1; i <= n; i++) {
      print('*' * i);
    }
    break;
  }
}

void convertingMinToSec() {
  stdout.write('Enter your minutes to converting to seconds : ');
  int? min = int.parse(stdin.readLineSync()!);

  print("converting ${min}m to ${min * 60}s");
  print("Done !");
}

void perimeterAndArea(){
  print(Process.runSync("clear", [], runInShell: true).stdout);
  print("1. Find the perimeter of the shape");
  print("2. Find the area of the shape");
  stdout.write('Chose A Number : ');
  int? number = int.parse(stdin.readLineSync()!);

  if (number == 1) {
    print(Process.runSync("clear", [], runInShell: true).stdout);
    print(" Find the perimeter of the shape");
    print("---------------------------------");
    print("1. Rectangle");
    print("2. Square");
    print("3. Triangle");
    stdout.write('Chose A Shape : ');
    int? shape1 = int.parse(stdin.readLineSync()!);

    switch (shape1) {
      case 1:
        print(Process.runSync("clear", [], runInShell: true).stdout);
        print(" The perimeter of the rectangle");
        print("--------------------------------");
        stdout.write("Enter the height : ");
        double? height = double.parse(stdin.readLineSync()!);
        stdout.write("Enter the width : ");
        double? width = double.parse(stdin.readLineSync()!);
        double heightAndWidth = height + width;
        print("perimeter of the rectangle is ${heightAndWidth * 2}");

      case 2:
        print(Process.runSync("clear", [], runInShell: true).stdout);
        print(" The perimeter of the square");
        print("-----------------------------");
        stdout.write("Enter the height of side : ");
        double? height = double.parse(stdin.readLineSync()!);
        print("perimeter of the square is ${height * 4}");

      case 3:
        print(Process.runSync("clear", [], runInShell: true).stdout);
        print(" The perimeter of the triangle");
        print("-------------------------------");
        stdout.write("Enter the first side : ");
        double? firstSide = double.parse(stdin.readLineSync()!);
        stdout.write("Enter the second side : ");
        double? secondSide = double.parse(stdin.readLineSync()!);
        stdout.write("Enter the third side : ");
        double? thirdSide = double.parse(stdin.readLineSync()!);
        print("perimeter of the triangle is ${firstSide + secondSide + thirdSide}");
    } 
  } else if (number == 2) {
    print(Process.runSync("clear", [], runInShell: true).stdout);
    print(" Find the area of the shape");
    print("----------------------------");
    print("1. Rectangle");
    print("2. square");
    print("3. triangle");
    stdout.write('Chose A Shape : ');
    int? shape2 = int.parse(stdin.readLineSync()!);

    switch (shape2) {
      case 1:
        print(Process.runSync("clear", [], runInShell: true).stdout);
        print(" The area of the rectangle");
        print("---------------------------");
        stdout.write("Enter the height : ");
        double? height = double.parse(stdin.readLineSync()!);
        stdout.write("Enter the width : ");
        double? width = double.parse(stdin.readLineSync()!);

        print("area of the rectangle is ${height * width}");
      
      case 2:
        print(Process.runSync("clear", [], runInShell: true).stdout);
        print(" The area of square");
        print("--------------------");
        stdout.write("Enter the height of side : ");
        double? height = double.parse(stdin.readLineSync()!);
        print("area of the square is ${height * height}");

      case 3:
        print(Process.runSync("clear", [], runInShell: true).stdout);
        print(" The area of the triangle");
        print("--------------------------");
        stdout.write("Enter the height of base : ");
        double? base = double.parse(stdin.readLineSync()!);
        stdout.write("Enter the height of base : ");
        double? height = double.parse(stdin.readLineSync()!);
        double baseAndHeight = base * height;
        print("perimeter of the triangle is ${0.5 * baseAndHeight}");
    }
  }
}
