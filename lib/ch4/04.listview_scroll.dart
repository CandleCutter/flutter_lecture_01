import 'package:flutter/material.dart';

class ListViewScroll extends StatefulWidget {
  const ListViewScroll({super.key});

  @override
  State<ListViewScroll> createState() => _ListViewScrollState();
}

class _ListViewScrollState extends State<ListViewScroll> {

  List<int> dataList=[54,56,77,11,97,12,77,96,36,74,54,4,55,77,46,84,69,11,87
    ,11,97,12,77,96,36,74,54,4,55,77,46,84,69,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("ListViewScroll"),
      ),
      body: listViewSeparator(),
    );
  }

  Widget listView(){
    return ListView(
      physics: BouncingScrollPhysics(), //ios 기본값
      // physics: RangeMaintainingScrollPhysics(),
      // physics: ClampingScrollPhysics(),//aos 기본값
      // physics: NeverScrollableScrollPhysics(),//스크롤을 못하게
      children: [
        _box(Colors.cyan),
        _box(Colors.red),
        _box(Colors.green),
      ],
    );
  }

  Widget listViewBuilder(){
    return ListView.builder(
      itemCount: 50, //리스트의 개수
      itemBuilder: (context, index) {
        /// index:리스트 아이템의 순서
        return Text(
          index.toString(),
          style: TextStyle(
          fontSize: 30),
        );
    },
    );

  }



  Widget listViewSeparator(){
    return ListView.separated(
      cacheExtent: 1000,
        itemBuilder: (context, index) {
          print("index : $index");
          return Column(
            children: [
              Text(
                index.toString(),
                style: TextStyle(fontSize: 30),

              ),
            ],
          );
        },

        separatorBuilder: (context,index){
          return SizedBox(height: 50);
        },itemCount: dataList.length);
  }

  Widget _box(Color color){
    return Container(
      height: 300,
      color: color,
      );
  }
}
