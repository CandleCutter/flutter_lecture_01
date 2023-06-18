import 'package:flutter_lecture_01/ch2/02.Animal/01.animal.dart';
import 'package:flutter_lecture_01/ch2/02.Animal/02.bird.dart';

mixin Item{

  void wakeUp();

  void talk(){

  }

}

/// bird 클래스에서만 쓸 수 있음
mixin Item2 on Animal{

  void nothing();

}