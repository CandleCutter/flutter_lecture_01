import 'package:flutter/material.dart';
import 'package:flutter_lecture_01/ch1/01.variable.dart';
import 'package:flutter_lecture_01/ch1/02.operator.dart';
import 'package:flutter_lecture_01/ch1/03.method.dart';
import 'package:flutter_lecture_01/ch1/04.conditional.dart';
import 'package:flutter_lecture_01/ch1/05.collections.dart';
import 'package:flutter_lecture_01/ch1/06.for_loop.dart';
import 'package:flutter_lecture_01/ch2/01.person.dart';
import 'package:flutter_lecture_01/ch2/02.product.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_lecture_01/main.dart';

void main() {

  // Variable();
  // print("----------------");
  // Operator();
  // print("----------------");
  // Method();
  // print("----------------");
  // Conditional();
  // collections();
  // ForLoop();

  //타입에는 String, int 등이 있으나
  //사용자가 타입을 만들수 있음

  /// 클래스를 생성할 때는 ()를 써줘야 함.
  // Person person = Person("김진환",34,78.0);
  // person.talk();
  //
  // Person person1 = Person("김진환1",341,178.0);
  // person1.talk();
  //
  // Person person2 = Person("김진환2",3411,1178.0);
  // person2.talk();

  /// 더조은 회사의 선풍기를 몇대 팔았는지 확인
  Product a = Product("선풍기", "더조은");
  a.sale();
  a.sale();
  a.sale();
  a.sum();








}


