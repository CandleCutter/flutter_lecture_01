class Method {
  Method() {
    /// int age = add();
    /// add() 메소드는 리턴값이 없으니 에러가 남
    int age = add2();
    print('Method.Method age : $age');

    double result = calculate(10, 20);
    print('Method.Method calculate : $result');
    print('Method.Method calculate2 : ${calculate(20, 120)}');
    print('Method.Method calculate3: ${calculate(210, 511)}');
    print('Method.Method calculate4 : ${calculate(2220, 410)}');
    print('Method.Method calculate5 : ${calculate(510, 230)}');

    String kk = introduce(name: "송우영", name2: "송우영2");
    print('Method.Method kk: $kk');

    optional("송우영");
    var ooo = optional("송우영", b: "안써도 되는 것");
    var ooo1 = optional("송우영");
    print('Method.Method ooo: $ooo');
    print('Method.Method ooo: $ooo1');
  }

  /// void = 리턴 타입이 없다
  /// 리턴타입  함수 이름  구현부
  /// int     add()     {}
  void add() {

  }

  /// add2 메소드는 리턴을 int형으로 30을 줌
  int add2() {
    return 30;
  }

  /// 계산합수
  /// 두 숫자를 받아 값을더하고 2로 나눈뒤 1.5를 곱한 값을 리턴
  double calculate(int a, int b) {
    return ((a + b) / 2) * 2.5;
  }

  /// String type 함수 만들어 쓰기
  String introduce({required String name, required String name2}) {
    return "안녕하세요. $name입니다.";
  }

  String optional(String a, {String b = "빈 값"}) {
    return "$a, $b, 잘부탁드립니다";
  }
}
