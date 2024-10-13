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

void main() {
  // dart는 new 생략이 가능하다
  var player = Player();
  print(player.name);
  // 기존의 JS, JAVA에서 활용하던 방식대로 사용 가능하다
  player.name = "new zeriong";
  print(player.name);

  // immerName을 출력하는 매서드
  player.sayHello();
}
