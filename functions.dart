// void란 의미적으로 return문을 활용하여 반환하는 값이 없다는 뜻
void sayHello(String name) {
  print("Hello $name nice to meet you!");
}

// 문자열(String)을 반환하는 함수
String sayHelloReturnString(String name) {
  return "Hello $name?";
}

// 화살표 함수를 활용한다면 즉시 리턴 가능하다
String sayHelloArrowFunction(String name) => "Hello $name?";

// 화살표 함수를 활용한 좋은 예시(코드 최적화가 가능해진 예)
num plus(num a, num b) => a + b;

// named argument 를 활용한 예시
// default value를 지정하지 않는다면 optional chaining을 통해 null이 허용되게 만들어야 함.
// 하지만 이는 Hello my name is null, 이런 형태로 적용되기 때문에 적합하지 않음
// 함수 실행 시 파라미터를 작성하지 않고 실행 가능할 수 있기 때문에 required를 넣어준다
String introduceUser({
  // default value를 적어준 예
  // String name = "Minsu",
  // int age = 20,
  // String country = "GongSaPhan",

  // required를 작성해주면 파라미터로 전달받는 것이 없다면 즉시 컴파일 에러를 발생시켜줌
  required String name,
  required int age,
  required String country,
}) {
  return "Hello my name is $name, I'm $age years old and from $country";
}

// optional positional parameter를 활용하기 위해선 반드시 대괄호로 묶어야 함
String introduceUserOnOptionalPositionalParam(String name, int age,
    [String? country = "Korea"]) {
  return "Hello my name is $name, I'm $age years old and from $country";
}

// 연산자 활용 가능 (??는 ES6에서 활용되는 연산자와 같다)
String capitalizeName(String? name) => name?.toUpperCase() ?? "NONAME";
// 또한 ??= 라는 방식으로 할당에 연산자를 포함할 수 있음
String capitalizeName2(String? name) {
  name ??= "NONAME";
  return name.toUpperCase();
}

// typedef를 활용하여 타입을 지정할 수 있음 (JS의 interface, type과 같은 것)
typedef TUser = Map<String, String>;
// type과 유사하게 활용 가능
String createUserStatus(TUser userInfo) {
  return "this user name is \"${userInfo['name']}\" and hobby: ${userInfo['hobby']}, age: ${userInfo['age']}";
}

/** 출력 */
void main() {
  sayHello("zeriong");

  // sayHelloReturnString는 String을 반환하기 때문에 print 파라미터로 넣어준다.
  print(sayHelloReturnString("zeriong"));

  // 화살표 함수를 활용한 예
  print(sayHelloArrowFunction("Arrow man"));

  // plus 함수 프린트
  print("plus result: ${plus(5, 7)}");

  // named argument를 활용한 예시 프린트
  print(introduceUser(age: 29, name: "zeriong", country: "Korea"));

  // optional positional parameter를 활용한 프린트 (country 파라미터가 없어도 작동됨)
  print(introduceUserOnOptionalPositionalParam("ZeroStone", 4));

  // 연산자를 활용하여 null인경우 두 함수 모두 "NONAME"이라는 값을 반환하고 있음
  print(capitalizeName(null));
  print(capitalizeName2(null));

  // typedef를 활용하여 타입지정한 예시
  print(createUserStatus(
      {"name": "zeriong", "hobby": "programming", "age": "29"}));
}
