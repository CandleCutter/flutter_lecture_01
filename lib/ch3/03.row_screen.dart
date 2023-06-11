import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /// Expanded flex 입력 안하면 기본값 1
            /// Spacer도 flex 입력 안하면 기본값 1
            Expanded(child: _container(100, 100, Colors.redAccent)),
            const Spacer(),
            _container(100, 100, Colors.yellowAccent),
            _container(100, 100, Colors.greenAccent),
          ],
        ),
      ),
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
