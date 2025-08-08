void main() {
  var numTest = sixTimesNine();
  print(numTest);

  print(times(7, 9));
  print(times(8, 9));

  int a = times(7, 9);
  int b = times(8, 9);

  print(a);
  print(b);
}

int sixTimesNine() {
  var num = 6 * 9;
  return num;
}

int times(int num1, int num2) {
  int total = num1 * num2;
  return total;
}
