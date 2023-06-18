import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScaffoldScreen extends StatelessWidget {
  const ScaffoldScreen({super.key});

  @override
  Widget build(BuildContext context) {

    ///AppBar 위젯
    ///scaffold 위젯
    ///
    return Scaffold(
      appBar: appBarWidget(),

    );
  }

  AppBar appBarWidget(){

    return AppBar(title: Text("ScaffoldScreen"),
      automaticallyImplyLeading: true, // 뒤로 가기 버튼 유무, 기본값 true
      // centerTitle: true,
      titleSpacing: 30,
      // 왼쪽 아이콘의 가로 영역
      // leadingWidth: 100,
      // // 왼족 아이콘 변경
      // leading: Icon(Icons.back_hand),

      actions: const[
        Icon(Icons.camera_alt, size: 30,),
        SizedBox(width: 10,),
        Icon(Icons.search, size: 30,),
        SizedBox(width: 10,)
      ],
      backgroundColor: Colors.red,

      elevation: 30, //z축 값 조절, 높으르수록 그림자가 깊어짐
    );

  }

}
