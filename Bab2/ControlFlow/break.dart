void main(List<String> args) {
  var i = 1;

  while (i < 19) {
    if (i % 9 == 0) {
      break;
    }

    print("Hello $i");

    i++;
  }
}
