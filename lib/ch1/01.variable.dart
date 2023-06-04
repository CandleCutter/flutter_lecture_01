class Variable{

  Variable(){

    // 1. 타입, 변수
    // DART에서는 4가지 타입이 있음
    // 1) String, 문자열, 문자열의 특징은 따옴표가 있어야 함, DART에서는 큰따옴표와 작은따옴표 구분 없음
    // 2) int, 숫자, 소수점 불가능
    // 3) double, 숫자, 소수점 가능
    // 4) bool, 참 거짓
    // 5) var
    // 6) dynamic
    // 7) 상수


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

    int aa = 100;
    aa = 200;

    //var => 타입은 선언하지 않은 상태
    var b;

    //변수형에 10을 넣었음으로 int 형으로 인식함, var를 통해서 데이터를 입력하면
    //입력한 값으로 데이터 타입을 입력함, 최초 입력 타입으로 인식함
    var c= 10;
    print(c);

    // dynamic으로 입력한 변수는 다양한 타입으로 업데이트를 할 수 있으나
    // 실제 개발할 때 이게 무슨 값인지 알기 어려움, 가급적 타입은 명시적으로 작성

    dynamic d = "송우영";
    print(d);
    d = 12;
    print(d);
    d = 22.2;
    print(d);
    d = true;
    print(d);


    // 값을 변하지 못하게 하는 장치, 상수
    final String address = "seoul";
    const q = "ff";





  }

}