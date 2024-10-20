/** 이넘을 활용하면 좀 더 안전하게 컨벤션을 만들 수 있다. */
// 예를 들자면 JS에서 Object와 interface를 활용하여 데이터를 관리하거나
// 데이터를 넣는 방식으로 이해 가능함.
enum Team { red, blue }

class Player {
  final String name;
  int age, xp; // 동시 정의
  Team team; // 이넘을 적용

  // named constructor
  Player({
    required this.name,
    required this.age,
    required this.xp,
    required this.team,
  });

  // player info print method
  void status() {
    print("name: \"$name\", xp: $xp, team: \"$team\", age: $age");
  }
}

/** main */
void main() {
  var player1 = Player(name: "name", xp: 10, team: Team.red, age: 30);
  player1.status();
}
