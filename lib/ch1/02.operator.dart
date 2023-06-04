//연산 : 산술, 증감, 비교, 논리
//산술 : 사칙연산
//증감 : 더하고 빼고
//비교 : 크고 작고 같고
//논리 : and, or, not, equal, not equal

class Operator {
  Operator() {
    add();
    minus();
    divide();
    multiple();
    arithmetic();
    compare();
    typeCheck();
    typeCasting();
  }

  void add() {
    int age = 0;
    print('age : $age');
    age = 10 + 10;
    print('add age : $age');
    age += 30;
    print('add age : $age');
  }

  void minus() {
    int age = 50;
    age = 100 - 50;
    print('minus age : $age');
    age -= 10;
    print('minus age : $age');
  }

  void divide() {
    double age = 5 / 2; //2.5
    print('divide age : $age');

    int age2 = 5 ~/ 2; //2 몫만 나오기
    print('divide age2 : $age2');

    double age3 = 5 % 2; //1 나머지만 나오기
    print('divide age3 : $age3');
  }

  void multiple() {
    int age = 10 * 3;
    print('multiple age : $age');
  }

  void arithmetic() {
    //증감 = 증가 or 감소
    double weight = 78.5;
    ++weight;
    print('arithmetic ++: $weight');
    --weight;
    --weight;
    --weight;
    --weight;
    --weight;
    print('arithmetic -- 5줄: $weight');
    weight -= 5;
    print('arithmetic -=5: $weight');
    print('arithmetic {++weight}: ${++weight}');
    print('arithmetic {weight++}: ${weight++}'); //출력 후 연산
    print('arithmetic weight : $weight');
  }

  void compare() {
    //equal, not equal
    // =: 데이터의 입력
    // ==: 일치여부

    int p1 = 10;
    int p2 = 20;

    print('p1==10 : ${p1 == 10}'); //T
    print('p1==p2 : ${p1 == p2}'); //F
    print('p1!=10 : ${p1 != 10}'); //F
    print('p1!=p2 : ${p1 != p2}'); //T

    // 비교
    print('p1 > p2 : ${p1 > p2}'); //F
    print('p1 < p2 : ${p1 < p2}'); //T

    // 같거나 큰지, 같거나 작은지
    print('p1 >= 10 : ${p1 >= 10}'); //T
    print('p1 <= 10 : ${p1 <= 10}'); //F
  }

  //F2 키 오류 찾기, 빨간 줄 찾기
  // Ctrl + alt + l : 코드 정렬

  void typeCheck(){

    int age = 33;
    String name = "김진환";

    print('age is int : ${age is int}'); //T
    print('age is String : ${age is String}'); //F
    print('age is bool : ${age is bool}'); //F
    print('age is double : ${age is! double}'); //T

  }

  void typeCasting(){
    // ex) int -> String 등
    int age = 33;
    print('typecasting age : $age');

    double age2 = age.toDouble();
    print('typeCasting age2 : $age2');

    String age3 = age.toString();
    print('typeCasting age3 : $age3');

    int.parse("20");




  }


}
