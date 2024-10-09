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
String introduceUser({
  String name = "Minsu",
  int age = 20,
  String country = "GongSaPhan",
}) {
  return "Hello my name is $name, I'm $age years old and from $country";
}

/**  */
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
}
