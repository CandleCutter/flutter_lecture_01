class Variable{

  Variable(){

    // 1. 타입, 변수
    // DART에서는 4가지 타입이 있음
    // 1) String, 문자열, 문자열의 특징은 따옴표가 있어야 함, DART에서는 큰따옴표와 작은따옴표 구분 없음
    // 2) int, 숫자, 소수점 불가능
    // 3) double, 숫자, 소수점 가능
    // 4) bool, 참 거짓

    String name = "송우영";
    //타입 변수명 입력 값
    print(name);

//   String age = "33";

    int age = 33;
    print(age);

    double weight= 99.9;
    print(weight);

    bool check = false;
    print(check);

    age = 50;
    print(age);

  }

}