import 'package:flutter/material.dart';

class SingleScrollScreen extends StatefulWidget {
  const SingleScrollScreen({super.key});

  @override
  State<SingleScrollScreen> createState() => _SingleScrollScreenState();
}

class _SingleScrollScreenState extends State<SingleScrollScreen> {

  /// Scrollview의 정보를 얻을 수 있고 상태를 변경할 수 있음
  ScrollController scrollController = ScrollController();

  /// initState 합수는 statefullwidget에만 있음
  @override
  void initState() {
    super.initState();
    // init : initialize ,초기화
    ///
    ///
    scrollController.addListener(() {
      // print(DateTime.now());
      var offset = scrollController.offset;
      print("offset : $offset");

      var direction = scrollController.position.userScrollDirection;

      print("direction : $direction");
    });
  }

  ///dispose : 화면이 사라질 때 호출
  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
  /// setState를 호출하면 buiㅣl부터 다시 시작
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SingleScrollScreen"),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        controller: scrollController,
        // reverse: true, // 아레 부터 시작
        scrollDirection: Axis.vertical,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            TextFormField(),
            _box(Colors.red),
            _box(Colors.orangeAccent),
            _box(Colors.yellowAccent),
            _box(Colors.green),
            _box(Colors.blue),
            _box(Colors.indigo),
            _box(Colors.purple),

          ],
        ),
      ),
    );
  }

  Widget _box(Color color){
    return Container(
      height: 200,
      // width: 200,
      color: color,

    );
  }
}
