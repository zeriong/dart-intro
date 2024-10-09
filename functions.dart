
// void란 의미적으로 return문을 활용하여 반환하는 값이 없다는 뜻
void sayHello(String name) {
  print("Hello $name nice to meet you!");
}
// 문자열(String)을 반환하는 함수
String sayHelloReturnString(String name) {
  return "Hello $name?";
}

void main() {
  sayHello("zeriong");

  // sayHelloReturnString는 String을 반환하기 때문에 print 파라미터로 넣어준다.
  print(sayHelloReturnString("zeriong"));
}