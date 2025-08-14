import 'car.dart';

void main(List<String> args) {
  var car = Car("Civic", "Honda", 100, "White", "Matic", 4, true);
  print(car.fuel);
  (car.start());
  (car.run());
  (car.turnOff());
  print(car.fuel);

  print(car.fillFuel(200));

  print(car.color);
  print(car.changeColor("Red"));
}
