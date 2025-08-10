void main(List<String> args) {
  var lists = getLists(6, 9);
  print(lists);

  for (var i = 0; i < lists.length; i++) {
    print(lists[i]);
  }

  lists.forEach((element) => print(element));

  var maps = getMaps("Fufufafa", "Rakagnarly");
  print(maps);
}

List<int> getLists(int a, int b) {
  int c = a + b;
  List<int> lists = [a, b, c];

  return lists;
}

Map<String, String> getMaps(String firstName, String lastName) {
  String fullname = "$firstName $lastName";
  var maps = <String, String>{
    "firstName": firstName,
    "lastName": lastName,
    "fullName": fullname,
  };
  return maps;
}
