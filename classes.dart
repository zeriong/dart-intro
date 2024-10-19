// 클래스 정의 방식은 JAVA와 유사하다
class Player {
  // final로 상수 선언
  final immerName = "can't modify zeriong";
  String name = "zeriong";
  int xp = 1500;

  void sayHello() {
    print("Hello my name is \"${immerName}\"");
    // this 활용도 가능하지만 Dart에서는 권장하지 않는 방식이다.
    // 하지만 가독성과 복잡성을 고려한다면 활용해도 문제되지 않을 것 같다.
    // print("Hello my name is ${this.immerName}");
  }
}

/** 동적으로 파라미터를 받아 인스턴스를 생성하는 예 */
class DynamicPlayerClass {
  // final로 상수 선언
  final String name;
  int xp;

  // DynamicPlayerClass(String name, int xp) {
  //   this.name = name;
  //   this.xp = xp;
  // }

  // constructor 단순화 (position이 매우 중요함.)
  // 아래와 같이 단순화 하는 경우 late문을 생략해도 된다.
  DynamicPlayerClass(this.name, this.xp);

  void status() {
    print("name: \"${name}\", xp: $xp");
  }
}

/** Named Argument 형태로 파라미터를 받아 인스턴스를 생성하는 예 */
class NamedArgUserClass {
  // final로 상수 선언
  final String name;
  int xp, age; // age와 xp 모두 int형태로 콤마를 넣어 같이 정의 가능
  String team;
  // int age;

  // named argument를 활용한 constructor
  NamedArgUserClass({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  void status() {
    print("name: \"$name\", xp: $xp, team: \"$team\", age: $age");
  }

  /** named constructors */
  NamedArgUserClass.createBluePlayer({
    required String name,
    required int age,
  })  : this.name = name,
        this.age = age,
        this.team = "blue",
        this.xp = 0;
  /** named constructors */
  NamedArgUserClass.createRedPlayer({
    required String name,
    required int age,
  })  : this.name = name,
        this.age = age,
        this.team = "red",
        this.xp = 0;

  void createRedPlayer() {}
}

/** Main Method */
void main() {
  // dart는 new 생략이 가능하다
  var player = Player();
  print(player.name);
  // 기존의 JS, JAVA에서 활용하던 방식대로 사용 가능하다
  player.name = "new zeriong";
  print(player.name);

  // immerName을 출력하는 매서드
  player.sayHello();

  // 파라미터를 받는 인스턴스를 생성
  var dynamicUser = DynamicPlayerClass("zeriong", 12000);
  dynamicUser.status();
  var dynamicUser2 = DynamicPlayerClass("zeriong222", 12222000);
  dynamicUser2.status();

  // named argument Class example
  var namedArgUserClass = NamedArgUserClass(
    name: "ZeroStone",
    xp: 20000,
    team: "BiSeok",
    age: 44,
  );
  // named argument Class status 출력
  namedArgUserClass.status();

  /** */
  var bluePlayer = NamedArgUserClass.createBluePlayer(
    name: "blueman",
    age: 8,
  );
  var redPlayer = NamedArgUserClass.createRedPlayer(
    name: "redman",
    age: 60,
  );

  bluePlayer.status();
  redPlayer.status();
}
