import 'package:flutter_lecture_01/ch2/03.homework/01.car.dart';
import 'package:flutter_lecture_01/ch2/03.homework/05.car_interface.dart';

class Sonata extends Car implements CarInterface{

  Sonata(super.price, super.carName, super.owner);

  void sonataFunction(){

    print("$owner 가 $carName에 주유하고 있습니다.");
  }

  @override
  void sell() {
    print("$owner 가 $carName을 $price에 판매했습니다.");
  }

}