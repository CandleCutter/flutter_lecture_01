import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
    const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  String url = "https://image.librewiki.net/thumb/3/3c/Image_readtop_2019_153364_15525272393668974.jpg/400px-Image_readtop_2019_153364_15525272393668974.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridViewScreen"),
      ),
      body: gridbiewBuilder(),
    );
  }

  Widget gridviewBase(){
    return GridView(gridDelegate: delegate(),
    padding: EdgeInsets.all(10),
    children: [
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),
      Image.network(url, fit: BoxFit.cover),


    ],);
  }

  Widget gridbiewBuilder(){
    return GridView.builder(
      gridDelegate: delegate(),
      itemBuilder: (context, index) {
        print(index);
        return Image.network(url);
      },

    );

  }

  SliverGridDelegate delegate(){
    return SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1,
        mainAxisExtent: 120 // 메인축의 사이즈 고정 설정
    );
        /// 1 : 기준 축과 교차 축의 비율 동일
        /// 1미만 기준 축이 더 큼
        /// 1초과 교차 축이 더 큼


  }
}

