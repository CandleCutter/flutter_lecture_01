import 'package:flutter_lecture_01/ch2/02.Animal/01.animal.dart';
import '04.animal_interface.dart';

/// 생성자
/// 해당 클래스를 생성할 때 사용하는 함수
/// 생성자는 클래스 이름과 동잃해야 함
/// super 라는 키워드는 부모 클래스의 생성자에 값을 입력

class Bird extends Animal implements AnimalInterface{
  Bird(super.name, super.age);

  /// override : 부모 클래스에 있는 함수를 구현한다는 의미
  @override
  void eat() {
  }

  @override
  void sleep() {
  }

  /// 고급
  /// 부모 클래스에서 구현한 함수를 지식 클래스에서 재구현 하기
  @override
  void run() {
    /// super라는 키워는 부모클래스의 것을 사용할 수 있음
    /// super.run(); 호출하면 부모 클래스의 run 함수를 호출하는 것
    // super.run();
    print('Bird 클래스의 run');
  }

  @override
  void hunting() {
  }

  @override
  void rest() {
  }

  @override
  void fly() {
  }
}