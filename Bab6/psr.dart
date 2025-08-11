import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  while (true) {
    print("===== NEW GAME =====");
    print("Kertas, Gunting, Batu");
    print('''Pilih:
    (K) Kertas
    (G) Gunting
    (B) Batu
''');

    String userInput = stdin.readLineSync()!.toUpperCase();
    String userMove;

    switch (userInput) {
      case "K":
        userMove = "Kertas";
        break;
      case "G":
        userMove = "Gunting";
        break;
      case "B":
        userMove = "Batu";
        break;
      default:
        userMove = "Quit";
        break;
    }

    if (userMove == "Quit") {
      return;
    }

    print("Kamu: $userMove");

    Random rand = new Random();
    int computerRandomInput = rand.nextInt(3);
    String computerMove;

    switch (computerRandomInput) {
      case 0:
        computerMove = "Kertas";
        break;
      case 1:
        computerMove = "Gunting";
        break;
      default:
        computerMove = "Batu";
        break;
    }

    print("Computer: $computerMove");

    String result;

    if (userMove == computerMove) {
      result = "Seri";
    } else if (userMove == "Batu" && computerMove == "Gunting") {
      result = "Kamu Menang";
    } else if (userMove == "Gunting" && computerMove == "Kertas") {
      result = "Kamu Menang";
    } else if (userMove == "Kertas" && computerMove == "Batu") {
      result = "Kamu Menang";
    } else {
      result = "Kamu Kalah";
    }

    print("Result: $result");
    print("==========");
  }
}
