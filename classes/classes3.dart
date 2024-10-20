enum Team { red, blue }

class Human {
  final String name;

  // constructor로 전달 받은 name을 사용
  Human({required this.name});

  void sayHello() {
    print("hello my name is $name");
  }
}

class Player extends Human {
  final Team team;
  Player({
    required this.team,
    required String name, // name을 파라미터로 전달받고
  }) : super(name: name); // 이어서 부모로 name을 전달

  @override
  void sayHello() {
    super.sayHello();
    // 단순하게 $team 만적어주면 Team.red가 반환되지만 team.name으로 접근하면 red 출력
    print("and my team is ${team.name}");
  }
}

void main() {
  var player = Player(team: Team.red, name: "zeriong");
  player.sayHello();
}
