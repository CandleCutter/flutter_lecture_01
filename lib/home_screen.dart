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
import 'package:flutter_lecture_01/ch5/05.bottom_navigation_bar_screen.dart';

import 'ch5/03.default_tab_controller_screen.dart';
import 'ch5/04.ui_exam_screen.dart';
import 'ch6/01.route_screen.dart';
import 'ch6/07.dialog_screen.dart';
import 'ch6/todo/08.todo_screen.dart';
import 'ch7/03.future_screen.dart';
import 'ch7/news/01.news_screen.dart';
import 'ch7/news/02.json_screen.dart';
import 'ch8/01.open_api_screen.dart';
import 'ch8/03.get_x_screen.dart';
import 'ch8/06.notifier_screen.dart';

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
      appBar: AppBar(
        title: Text("홈"),
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
            button(
                page: DefaultTabControllerScreen(),
                name: "DefaultTabControllerScreen"),
            button(page: UiExamScreen(), name: "UiExamScreen"),
            button(
                page: BottomNavigationBarScreen(),
                name: "BottomNavigationBarScreen"),
            button(page: RouteScreen(), name: "RouteScreen"),
            button(page: DialogScreen(), name: "DialogScreen"),
            button(page: TodoScreen(), name: "TodoScreen"),
            button(page: NewsScreen(), name: "NewsScreen"),
            button(page: JsonScreen(), name: "JsonScreen"),
            button(page: FutureScreen(), name: "FutureScreen"),
            button(page: OpenApiScreen(), name: "OpenApiScreen"),
            button(page: GetXScreen(), name: "GetXScreen"),
            button(page: NotifierScreen(), name: "NotifierScreen"),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/first");
                },
                child: Text("RouteNamedScreen"))
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
