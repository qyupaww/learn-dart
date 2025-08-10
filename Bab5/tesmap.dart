void main(List<String> args) {
  var numbers = <int, String>{
    1: "one",
    2: "two",
    3: "three",
    4: "four",
    5: "five",
  };

  print(numbers);
  print(numbers[2]);

  var akmj = <String, String>{
    "Wowo": "Omke Gasm",
    "Girban": "Hilirisasi",
    "Owi": "Wi Wok De Tok",
    "Bahlil": "Ganteng",
    "Budi Arie": "GOBLOK",
  };
  print(akmj);

  akmj["Anis"] = "Intelek";
  print(akmj["Anis"]);
}
