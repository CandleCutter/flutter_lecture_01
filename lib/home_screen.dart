import 'package:flutter/material.dart';
import 'package:flutter_lecture_01/ch3/01.container_screen.dart';
import 'package:flutter_lecture_01/ch3/02.column_screen.dart';
import 'package:flutter_lecture_01/ch3/03.row_screen.dart';
import 'package:flutter_lecture_01/ch3/04.scaffold_screen.dart';
import 'package:flutter_lecture_01/ch3/05.text_screen.dart';
import 'package:flutter_lecture_01/ch3/06.image_screen.dart';
import 'package:flutter_lecture_01/ch4/01.button_screen.dart';
import 'package:flutter_lecture_01/ch4/02.text_form_field_screen.dart';
import 'package:flutter_lecture_01/ch4/03.single_scroll_screen.dart';
import 'package:flutter_lecture_01/ch4/04.listview_scroll.dart';
import 'package:flutter_lecture_01/ch4/05.gridview_screen.dart';
import 'package:flutter_lecture_01/ch5/01.pageview_screen.dart';
import 'package:flutter_lecture_01/ch5/02.tabbar_screen.dart';

import 'ch5/03.default_tab_controller_screen.dart';
import 'ch5/04.ui_exam.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

///
/// AppBar 는 화면 상단 위짓
/// 뒤로가기 버큰 , 타이틀, 검색 버튼 같은 것들이 있음
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("홈"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            button(page: ContainerScreen(), name: "Container"),
            button(page: ColumnScreen(), name: "Column"),
            button(page: RowScreen(), name: "Row"),
            button(page: ScaffoldScreen(), name: "Scaffold"),
            button(page: TextScreen(), name: "Text"),
            button(page: ImageScreen(), name: "Image"),
            button(page: ButtonScreen(), name: "Button"),
            button(page: TextFormFieldScreen(), name: "TextFormField"),
            button(page: SingleScrollScreen(), name: "SingleScrollScreen"),
            button(page: ListViewScroll(), name: "ListViewScroll"),
            button(page: GridViewScreen(), name: "GridViewScreen"),
            button(page: PageViewScreen(), name: "PageViewScreen"),
            button(page: TabBarScreen(), name: "TabBarScreen"),
            button(page: DefaultTabControllerScreen(), name: "DefaultTabControllerScreen"),
            button(page: UiExamScreen(), name: "UiExamScreen"),


          ],
        ),
      ),
    );

  }

  Widget button({required Widget page, required String name}) {
    return Container(
      width: double.infinity,
      height: 60,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return page;
              },
            ),
          );
        },
        child: Text(
          name,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
