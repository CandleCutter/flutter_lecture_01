import 'package:flutter_lecture_01/ch2/02.Animal/01.animal.dart';
import 'package:flutter_lecture_01/ch2/02.Animal/05.dog_interface.dart';
import 'package:flutter_lecture_01/ch2/02.Animal/06.item.dart';
import '04.animal_interface.dart';

/// 생성자
/// 해당 클래스를 생성할 때 사용하는 함수
/// 생성자는 클래스 이름과 동잃해야 함
/// super 라는 키워드는 부모 클래스의 생성자에 값을 입력

// 상속은 하나만 가능
// 인터페이스는 여러개 가능
class Bird extends Animal with Item, Item2 implements AnimalInterface, DogInterface {
  Bird(super.name, super.age);

  /// override : 부모 클래스에 있는 함수를 구현한다는 의미
  @override
  void eat() {}

  @override
  void sleep() {}

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
  void hunting() {}

  @override
  void rest() {}

  @override
  void fly() {}

  @override
  void jump() {
  }

  @override
  void play() {
  }

  @override
  /// 구현부가 없는 함수는 자식 클래스에서 구현해야 함
  /// interface에서는 구현부가 있어도 자식클래스에서 무조건 구현해야 함
  /// mixin 에서는 구현부가 있으면 자식 클래스에서 구현 안해도 됨
  void wakeUp() {
  }

  @override
  void talk() {

    super.talk();
  }

  @override
  void nothing() {
  }


  }

