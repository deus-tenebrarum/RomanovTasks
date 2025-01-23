class Player {
  final String name;
  final String symbol;

  Player(this.name, this.symbol);
}

class Game {
  final Player player1;
  final Player player2;
  String winner = '';
  int matchNumber = 1;
  int player1Wins = 0;
  int player2Wins = 0;
  int draws = 0;

  Game(this.player1, this.player2);

  void makeMove(Player player, int row, int col) {
    print('${player.name} сделал ход на позицию ($row, $col).');
  }

  void win(Player player) {
    winner = player.name;
    print('${player.name} победил!');
    if (player == player1) {
      player1Wins++;
    } else {
      player2Wins++;
    }
    matchNumber++;
  }

  void draw() {
    print('Ничья!');
    draws++;
    matchNumber++;
  }
}

void main() {
  var player1 = Player('Игрок 1', 'X');
  var player2 = Player('Игрок 2', 'O');

  var game = Game(player1, player2);

  game.makeMove(player1, 0, 0);
  game.makeMove(player2, 1, 1);
  game.makeMove(player1, 0, 1);
  game.makeMove(player2, 2, 2);
  game.makeMove(player1, 0, 2);
  game.win(player1);
  game.makeMove(player2, 1, 1);
  game.makeMove(player1, 0, 1);
  game.makeMove(player2, 2, 2);
  game.draw();
}