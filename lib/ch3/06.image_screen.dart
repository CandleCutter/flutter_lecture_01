import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  final String imageUrl ="https://s3.ap-southeast-1.amazonaws.com/we-xpats.com/uploads/article/ko_108_1.jpg";


  ///jpg, jpeg, png
  ///png 는 배경이 투명한 이미지
  ///jpg, jpeg는 그냥 이미지
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageScreen"),
      ),
      body: Column(
        children: [
          // Image.asset("assets/summer.png"),
          SizedBox(width:300,
              height:300,
              child: Image.network(imageUrl,
                fit: BoxFit.fitWidth,
                ),
        ),
        ],
      ),
    );
  }
}
