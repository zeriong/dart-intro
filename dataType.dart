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

  var name2 = "zeriong";
  var age = 20;

  // String Interpolation (JS에서 템플릿리터럴 같은 방식)
  // 계산이 필요하다면 내부에 리터럴을 넣어서 계산하고 단순 변수만을 담을 때는 $ 후에 변수명만 넣어주면 됨.
  var greeting = "hi, my name is $name2, and i'm ${age + 9}";
  // 작은 따옴표 중복으로 문제가 될 경우 큰 따옴표를 쓰거나 이스케이프를 통해 해결
  greeting = 'hi, my name is $name2, and i\'m ${age + 9}';

  // string interpolation print
  print(greeting);

  // String Interpolation + collection for 예제코드
  var oldFriends = ["chanChan", "seoGwon"];
  var newFriends = [
    "zeroStone",
    "spaceBeaver",
    for (var friend in oldFriends) "⭐$friend",
  ];
  // 오래된 친구만 별 이모지를 추가하여 별도로 체크
  print(newFriends);
}
