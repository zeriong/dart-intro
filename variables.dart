void main() {

  /** ------------------------------  타입과 선언  -------------------------------- */

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

  // Null albe 선언 (typescript의 ?를 사용하는 옵셔널 체이닝과 같음)
  String? alias; // string 또는 null이 가능한 형태
  alias = "potato";
  alias = null;
  // 위에서 활용한 dynamic 타입과 마찬가지로 if문을 통해서 타입을 가정할 수 있어야 제공 메서드, api 활용 가능하다.
  if (alias != null) {
    alias.isNotEmpty;
  }
  // 또는 아래 처럼 활용 가능
  // typescript에서 활용할 때 처럼 있다면 이어서 실행될 것이고, 아닌 경우 그대로 멈추게 된다.
  alias?.isNotEmpty;
  alias?.length;

  // final을 활용한 상수 지정 (java의 final과 같다.)
  final constants = "this is a const";
  // constants = "nope"; // 컴파일 에러 발생

  // late는 초기화를 늦춰주는 역할을 한다. (값 초기화 이전에 발생하는 컴파일 에러를 방지해줌)
  // 아래 예시는 통신을 통해 상수로 활용할 값을 기다렸다가 통신 성공 시 지정해줄 때 이와 같이 활용할 수 있다.
  late final awaitResponseConst;
  awaitResponseConst = "i'm not modify";
  /** 이외의 다양한 케이스에 의한 late를 사용할 수도 있는데 이는 lateEx.dart 파일에 예시를 작성했다. */

  // const는 반드시 하드코디 되어야 한다. 즉, JS에서 처럼 사용자가 입력한 값을 const에 담아서 처리한다거나
  // api를 통해 받은 값을 const에 저장한다던가 하는 방식은 허용되지 않는다.
  const maxLength = 100;
  // 위처럼 반드시 내부적으로만 상수값으로 활용 될 때 사용하고
  // 통신을 통해 받거나, 유저 입력으로 받는 상수값인 경우는 final 또는 var를 활용해야 한다.

  /** ------------------------------  ㅡㅡㅡㅡㅡㅡ  -------------------------------- */

}