import 'inheritance.dart';

void main(List<String> args) {
  var wowo = WowoClass('Wowo');
  var owi = OwiClass('Owi');
  var fufufa = FufufaClass('Fufufa', 19);

  print(wowo);
  print(wowo.data);
  wowo.printClass();

  print(owi);
  print(owi.data);
  owi.printClass();

  print(fufufa);
  print(fufufa.data);
  fufufa.printClass();
  fufufa.printValue();
}
