class OwiClass {
  final String data;

  OwiClass(this.data);

  void printClass() {
    print('Wi Wok De Tok');
  }
}

class WowoClass extends OwiClass {
  final String data;

  WowoClass(this.data) : super(data);
}

class FufufaClass extends WowoClass {
  final String data;
  final int value;

  FufufaClass(this.data, this.value) : super(data);

  void printValue() {
    print('This is Value: $value');
  }
}
