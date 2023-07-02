import 'dart:math';

class NullSafety {

  NullSafety(){

    print("age : $age, name : $name");
    print("age2 : $age2, name2 : $name2");
  }

  /// null : 아무 것도 없음을 의미
  /// 값 자체가 존재하지 않거나 할당하지 않은 상태
  ///
  /// NullSafety : null 오류로부터 방지해주는 안전 장치
  /// Null이라는 값을 잘 못 사용하면 오류 발생
  ///
  ///

  /// nullable 타입은 null을 허용할 수 있음
  /// Non-nullable 타입은 null을 허용할 수 없음
  ///
  /// nullable 타입 : 타입 뒤에 ?가 올 수 있는 것
  /// Non-nullable 타입 : 타입 뒤에 ?가 올 수 없는 것

  int age=33;
  String name = "김진환";

  int? age2;
  String? name2;


}
