void main(List<String> args) {
  var grade = "A";

  if (grade == "A") {
    print(4.0);
  } else if (grade == "A/B") {
    print(3.5);
  } else if (grade == "B") {
    print(3);
  } else {
    print("Invalid");
  }
}
