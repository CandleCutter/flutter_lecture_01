import 'package:flutter_lecture_01/ch2/coffee/01.coffee.dart';


/// 상속, 부모, 자식
/// Americano 클래스가 Coffee 클래스를 상속 받았다.
/// Americano 자식 클래스, Coffee 부모 클래스

class Americano extends Coffee{

  ///super 키워드
  ///super 키워드를 사용하면 부모 클래스의 생성자에 연결

  Americano(super.name, super.price, super.isHot, super.takeOut);

}