/** 이넘을 활용하면 좀 더 안전하게 컨벤션을 만들 수 있다. */
// 예를 들자면 JS에서 Object와 interface를 활용하여 데이터를 관리하거나
// 데이터를 넣는 방식으로 이해 가능함.
enum Team { red, blue }

// 추상화 클래스 정의
abstract class Human {
  void walk();
}

// 추상화 클래스를 상속하여 반드시 walk매서드를 가지도록 강제할 수 있음.
// 이는 전체적인 추상화에 도움이 될 수 있음
// ( walk 매서드가 없다면 에러 발생 )
class Player extends Human {
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

  // 추상화 클래스 Human이 필요로하는 method를 추가해줌
  void walk() {
    print("$name is walking");
  }

  // player info print method
  void status() {
    print("name: \"$name\", xp: $xp, team: \"$team\", age: $age");
  }
}

class Coach extends Human {
  void walk() {
    print("coach is walking!");
  }
}

/** main */
void main() {
  var player1 = Player(name: "zeriong", xp: 10, team: Team.red, age: 30);
  player1.status();
  player1.walk();

  var coach = Coach();
  coach.walk();
}
