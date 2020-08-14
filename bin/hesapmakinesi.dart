import 'dart:io';

void main() {
  try {
    while (true) {
      calculate();
      print('Exit? y / n');
      var q = stdin.readLineSync();
      if (q == 'y') {
        break;
      }
    }
  } catch (e) {
    print(e);
  }
}

void calculate() {
  print('1. number');
  var num1 = double.parse(stdin.readLineSync());
  print('2. number');
  var num2 = double.parse(stdin.readLineSync());

  print('***Choose an operator***');
  print('Add->        +\nSubtract->   -\nDivide->     /\nMultiply->   * ');
  var n = stdin.readLineSync();

  switch (n) {
    case '+':
      add(num1, num2);
      break;
    case '-':
      subtract(num1, num2);
      break;
    case '/':
      divide(num1, num2);
      break;
    case '*':
      multiply(num1, num2);
      break;
    default:
      print('Invalid operator');
      break;
  }
}

void add(double num1, double num2) {
  print(num1 + num2);
}

void subtract(double num1, double num2) {
  print(num1 - num2);
}

void divide(double num1, double num2) {
  print(num1 / num2);
}

void multiply(double num1, double num2) {
  print(num1 * num2);
}
