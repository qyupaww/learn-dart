class Car {
  String _name;
  String _merk;
  int fuel;
  String color;
  final String carType;
  final int totalSeat;
  final bool isNewCar;

  Car(
    this._name,
    this._merk,
    this.fuel,
    this.color,
    this.carType,
    this.totalSeat,
    this.isNewCar,
  );

  String get name => _name;
  set name(String newName) => this._name = newName;

  String get merk => _merk;
  set merk(String newMerk) => this._merk = newMerk;

  void start() {
    fuel -= 10;
    print('Car $name is started');
  }

  void run() {
    fuel -= 50;
    print('Car $name is running');
  }

  void turnOff() {
    print('Car $name is turned off');
  }

  String changeColor(String newColor) {
    print('Car $name is changed color to $newColor');
    color = newColor;
    return newColor;
  }

  int fillFuel(int addtionalFuel) {
    print("Car fuel before filling $fuel");
    fuel += addtionalFuel;
    print("Car fuel after filling $fuel");
    return fuel;
  }
}
