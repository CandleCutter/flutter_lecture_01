import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lecture_01/ch3/03.row_screen.dart';
import 'package:flutter_lecture_01/ch6/01.route_screen.dart';
import 'package:flutter_lecture_01/ch6/02.route_second_screen.dart';
import 'package:flutter_lecture_01/ch6/named_route/05.route_named_second_screen.dart';
import 'package:flutter_lecture_01/ch6/named_route/06.route_named_third_screen.dart';
import 'ch3/01.container_screen.dart';
import 'ch3/02.column_screen.dart';
import 'ch6/named_route/04.route_named_screen.dart';
import 'home_screen.dart';

/// main 함수
/// 어플리케이션이 시작하는 위치

void main(){
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // home : HomeScreen(),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomeScreen(),
        "/first": (context) => const RouteNamedScreen(),
        "/second": (context) => const RouteNamedSecondScreen(),
        "/third": (context) => const RouteNamedThirdScreen(),
      }
    );


  }
}
