void main() {
  try {
    var value = numDivideByZero(10, 0);
    print(value);
  } catch (e) {
    print("Error: $e");
  }

  var value2 = numDivideByZero(10, 8);
  print(value2);
}

num numDivideByZero(int value, int divider) {
  if (divider == 0) {
    throw Exception("Can't divide by Zero");
  } else {
    return value / divider;
  }
}
