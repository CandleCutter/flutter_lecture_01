import 'package:flutter_lecture_01/ch2/03.homework/01.car.dart';
import 'package:flutter_lecture_01/ch2/03.homework/05.car_interface.dart';

class Benz extends Car implements CarInterface{
  Benz(super.price, super.carName, super.owner);

  void benzFunction(){

    print("$owner 가 $carName를 수리했습니다.");
  }

  @override
  void sell() {
    print("$owner 가 $carName을 $price에 판매했습니다.");
  }

}