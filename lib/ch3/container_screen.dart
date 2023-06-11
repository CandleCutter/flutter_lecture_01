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
          color: Colors.yellow,
          width: 200,
          height: 400,
          child: const Text(
            "컨테이너",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          alignment: Alignment.bottomCenter,

        ),
      ),
    );
  }
}
