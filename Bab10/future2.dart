void main(List<String> args) {
  executeTask();
  print("Fetching fav Animek");
}

void executeTask() async {
  var result = await fetchFavAnimek();
  print(result);
}

Future<String> fetchFavAnimek() async {
  await Future.delayed(const Duration(seconds: 2));
  return "One Piece";
}
