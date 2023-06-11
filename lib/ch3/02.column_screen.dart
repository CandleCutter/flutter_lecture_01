import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
          width: double.infinity,//가능한 최대 사이즈 지정
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            /// mainAxisSize: MainAxisSize.min,
            /// xmrtjddms children의 사이즈로 고정
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  flex: 6,
                  child: _container(100, 100, Colors.redAccent)),
              Expanded(
                  flex: 2,
                  child: _container(100, 100, Colors.orangeAccent)),
              Expanded(
                  flex: 2,
                  child: _container(100, 100, Colors.greenAccent)),
            ],
          ),
        )
    );
  }

  Widget _container(
    double width,
    double height,
    Color color,
    ){
    return Container(
      width: width,
      height: height,
      color: color,
    );
  }
}
