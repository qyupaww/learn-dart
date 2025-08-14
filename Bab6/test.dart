import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  Map<String, String> moveMap = {'K': 'Kertas', 'G': 'Gunting', 'B': 'Batu'};

  List<String> moves = ['Kertas', 'Gunting', 'Batu'];
  Map<String, String> winningMoves = {
    'Batu': 'Gunting',
    'Gunting': 'Kertas',
    'Kertas': 'Batu',
  };

  while (true) {
    print("===== NEW GAME =====");
    print("Kertas, Gunting, Batu");
    print('''Pilih:
    (K) Kertas
    (G) Gunting
    (B) Batu
''');

    String userInput = stdin.readLineSync()!.toUpperCase();
    String userMove = moveMap[userInput] ?? 'Quit';

    if (userMove == 'Quit') {
      return;
    }

    print("Kamu: $userMove");

    Random rand = Random();
    String computerMove = moves[rand.nextInt(3)];
    print("Computer: $computerMove");

    String result;
    if (userMove == computerMove) {
      result = 'Seri';
    } else if (winningMoves[userMove] == computerMove) {
      result = 'Kamu Menang';
    } else {
      result = 'Kamu Kalah';
    }

    print("Result: $result");
    print("==========");
  }
}
