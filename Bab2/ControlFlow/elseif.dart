void main(List<String> args) {
  var a = 9;
  var b = 6;
  var c;

  if (a < b) {
    c = a * b;
    print(c);
  } else if (a >= 10) {
    c = a * 9;
    print(c);
  } else if (a <= 9) {
    c = a * 2;
    print(c);
  } else {
    c = a + b;
    print(c);
  }
}
