import 'package:flutter/material.dart';
import 'package:flutter_lecture_01/ch1/01.variable.dart';
import 'package:flutter_lecture_01/ch1/02.operator.dart';
import 'package:flutter_lecture_01/ch1/03.method.dart';
import 'package:flutter_lecture_01/ch1/04.conditional.dart';
import 'package:flutter_lecture_01/ch1/05.collections.dart';
import 'package:flutter_lecture_01/ch1/06.for_loop.dart';
import 'package:flutter_lecture_01/ch1/07.null_safety.dart';
import 'package:flutter_lecture_01/ch2/01.person.dart';
import 'package:flutter_lecture_01/ch2/01.Coffee/01.coffee.dart';
import 'package:flutter_lecture_01/ch2/02.Animal/02.bird.dart';
import 'package:flutter_lecture_01/ch2/02.Animal/03.dog.dart';
import 'package:flutter_lecture_01/ch2/02.product.dart';
import 'package:flutter_lecture_01/ch2/03.homework/02.benz.dart';
import 'package:flutter_lecture_01/ch2/03.homework/03.genesis.dart';
import 'package:flutter_lecture_01/ch2/03.homework/04.sonata.dart';
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
  // Product a = Product("선풍기", "더조은");
  // a.sale();
  // a.sale();
  // a.sale();
  // a.sum();
  //

  // Americano americano = Americano("프리미엄아메리카노", 8000, false, false);
  // americano.sale();
  // americano.service();
  //
  //
  // Latte latte = Latte("저렴한 라떼", 1500, true, true);
  // latte.service();
  // latte.refund();

//   /// Bird 클래스 생성
//   Bird bird1 = Bird("비둘기", 2);
//
//   /// run 함수 호출
//   bird1.run();
//
//   Dog dog1 = Dog(name: "흰둥이", age: 3);
//   dog1.run();
//   dog1.sleep();
//   dog1.eat();
//
//   Benz benz = Benz(18000, "벤츠", "김벤츠");
//   benz.go();
//   benz.stop();
//   benz.benzFunction();
//   benz.sell();
//
//   print("-----------------------------");
//
//   Genesis genesis = Genesis(8000, "제네시스", "김제네");
//   genesis..go()
//   ..stop()
//   ..genesisFunction()
//   ..sell();
//
//   print("-----------------------------");
//
//   Sonata sonata = Sonata(5000, "소나타", "김소나");
//   sonata.go();
//   sonata.stop();
//   sonata.sonataFunction();
//   sonata.sell();
  var nullSafety = NullSafety();

  nullSafety.age = 40;
  nullSafety.name= "홍길동";
  nullSafety.age2= 50;
  nullSafety.age2= null;
  nullSafety.name2= "null이였지";
  nullSafety.name2= null;

  NullSafety? ns2;

  print("ns2 : $ns2");












}
