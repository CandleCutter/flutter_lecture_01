import 'package:flutter_lecture_01/ch2/02.Animal/01.animal.dart';

class Dog extends Animal{

  /// Bird 클래스와 다른 2개 작업
  /// 1. swim 함수 추가
  /// 2. 생성자를 다른 방법으로 만들어 볼 것

  // Dog(super.name, super.age); 자동완성으로 만든 생성자

  // 생성자 만드는 다른 방법
  Dog({required String name, required int age}):super(name,age);

  @override
  void eat() {
    print("강아지 $name이가 밥을 먹고 있습니다.");
  }

  @override
  void sleep() {
    print("강아지 $name이가 잠을 자고 있습니다.");
  }

  void swim(){
    print("강아지 $name이가 수영하고 있습니다.");
  }



}


