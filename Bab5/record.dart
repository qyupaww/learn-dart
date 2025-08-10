void main(List<String> args) {
  (String, int) record = ("AKMJ", 02);

  print(record);
  print(record.$1);
  print(record.$2);

  ({bool isTrue, String akmj}) record1 = (isTrue: true, akmj: "Wowo");

  print(record1);
  print(record1.isTrue);
  print(record1.akmj);
}
