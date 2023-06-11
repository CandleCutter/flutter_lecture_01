import 'dart:math';

import 'package:flutter/material.dart';

///stl 누르고 자동완성
///containerScreen 누르고 완성
//아이폰 쿠퍼티노
//안드로이드 머트리얼

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(

          width: 300,
          height: 500,
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.all(10),
          // margin: EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.purpleAccent,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.black,
            width: 8,
            ),
            gradient:
            const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              transform: GradientRotation(1),
              colors: [
              Colors.red,
              Colors.orange,
              Colors.yellow,
              Colors.green,
              Colors.blue,
              Colors.indigo,
              Colors.purple,
            ])
          ),
          foregroundDecoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 20,
                spreadRadius: 20,
                offset: Offset(15,15),
                blurStyle: BlurStyle.outer


              )
            ]

          ),
          child:  const Text(
            "컨테이너",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),//decoration을 사용하면 컬러 사용 불가

        ),
      ),
    );
  }
}
