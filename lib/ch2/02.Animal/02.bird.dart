import 'package:flutter_lecture_01/ch2/02.Animal/01.animal.dart';

/// 생성자
/// 해당 클래스를 생성할 때 사용하는 함수
/// 생성자는 클래스 이름과 동잃해야 함
/// super 라는 키워드는 부모 클래스의 생성자에 값을 입력

class Bird extends Animal{
  Bird(super.name, super.age);

  /// override : 부모 클래스에 있는 함수를 구현한다는 의미
  @override
  void eat() {
  }

  @override
  void sleep() {
  }

}