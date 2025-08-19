void main(List<String> args) {
  rillGoat();
  print('The GOAT');
}

Future<void> rillGoat() {
  return Future.delayed(const Duration(seconds: 1)).then((_) => print("Faker"));
}
