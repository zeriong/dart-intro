// Using null safety, incorrectly:
class Coffee {

  // String _temperature; // late가 붙지 않아 에러를 발생 시킴
  // String? _temperature; // null safety를 활용해도 serve 메서드에서 + 연산자로 인해 에러 발생(타입추론 불가상태)

  late String _temperature; // late를 활용해 초기화를 미뤄 올바른 방식으로 해결

  void heat() { _temperature = 'hot'; }
  void chill() { _temperature = 'iced'; }

  // JS의 화살표 함수처럼 dart에서는 화살표 메서드가 있다.
  String serve() => _temperature + ' coffee';
}

main() {
  var coffee = Coffee();
  coffee.heat();
  print(coffee.serve());
}