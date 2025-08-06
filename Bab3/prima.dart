void main(List<String> args) {
  var fromNumber = 1;
  var untilNumber = 100;

  for (var number = fromNumber; number <= untilNumber; number++) {
    var counter = 0;
    for (var divider = 1; divider <= number; divider++) {
      if (number % divider == 0) {
        counter++;
      }
    }
    if (counter == 2) {
      print("$number adalah bilangan prima");
    }
  }
}
