void main() {
  String name = "이름";
  bool boolean = false;
  int n = 1;
  double D = 1.1;

  // 객체 지향 언어로 int, double등을 들어가 보면 모두 num이란 오브젝트를 부모로 가지고 있음
  // 즉 num 타입은 숫자에 대한 모든 타입을 지정할 수 있다는 것
  num number = 1;
  number = 1.23;
  number = 1.2;
  number = 0;

  var numbers = [1, 2, 3, 4]; // var를 활용한 list 선언 방식
  List<num> nums = [1, 2, 3, 4]; // 타입 명시 list 선언 방식

  numbers.add(500); // JS에서 push와 같은 개념

  // 프린트
  print("numbers add 500: " + numbers.toString()); // list 출력

  // collection if를 활용하면 하단에서 별도의 조건문 + add 매서드를 활용하지 않을 수 있다.
  var isBool = true;
  var numbers2 = [1, 2, 3, if (isBool) 400];

  // collection if 활용
  print("numbers2 add 400 : " + numbers2.toString());
}
