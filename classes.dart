// 클래스 정의 방식은 JAVA와 유사하다
class Player {
  String name = "zeriong";
  int xp = 1500;
}

void main() {
  // dart는 new 생략이 가능하다
  var player = Player();
  print(player.name);
  // 기존의 JS, JAVA에서 활용하던 방식대로 사용 가능하다
  player.name = "new zeriong";
  print(player.name);
}
