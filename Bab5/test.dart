void main(List<String> args) {
  var list1 = [1, 11, 22, 33, 44];
  var list2 = [4, 14, 23, 32, 41];

  List<int> list3 = [];

  for (var index = 0; index < list1.length; index++) {
    var asd = list1[index] + list2[index];
    list3.add(asd);
  }
  print(list3);
}
