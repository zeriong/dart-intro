void main() {
  // 변수 선언 시 var로 선언하는 것은 관습적으로 함수, 메서드 등 내부의 지역변수로서 선언할 때 많이 사용됨
  var name = "zeriong";
  name = "제리옹";

  // class내부에서 변수나 property의 경우 아래 처럼 타입 명시 선언을 활용한다고 함.
  String realName = "????";

  // dynamic type 은 어떤한 타입이라도 넣을 수 있다.
  // typescript 에서 활용되는 any와 같은 타입으로 볼 수 있다.

  // dynamic을 타입 명시로 활용하는 예
  dynamic anyType = "sdf";
  anyType = 123;
  anyType = false;
  anyType = {};

  // 아무것도 할당하지 않고 선언만 한 경우 자동으로 dynamic으로 선언된다.
  var dynamicVar;
  dynamicVar = 123;
  dynamicVar = true;
  dynamicVar = [];
  dynamicVar = "하이";

  // 하지만 다이나믹 타입으로 지정되어 있으면 해당 변수에 대해 추론이 안되어
  // 아래처럼 조건문을 추가해준다면 해당 변수에서 접근가능한 dart에서 자체 제공하는 매서드, api들을 활용할 수 있다.
  if (dynamicVar is String) {
    print("dynamicVar length is " + dynamicVar.length.toString());
  }

  /** 이상적으로 dart에서 dynamic 사용을 지양하는 것이 좋다. */

  print("hello, my name is " + name);



}