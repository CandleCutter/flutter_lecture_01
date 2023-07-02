import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonScreen"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _elevatedButton(),
            _textButton(),
            _outLinedButton(),

          ],
        ),
      ),
    );
  }

  Widget _elevatedButton() {
    return ElevatedButton(
      // onPressed: null,
      onPressed: () {
        // null 을 넣으면 비활성화
        print("ElevatedButton onPressed");
      },
      onLongPress: (){
        print("ElevatedButton onLongPressed");
      },
      style: buttonStyle(),
      child: Text("ElevatedButton"),
    );
  }

  Widget _textButton(){
    return TextButton(
      onPressed: (){},
      child: Text("TextButton"),
      style: buttonStyle(),
    );
  }

  Widget _outLinedButton(){
    return OutlinedButton(
      onPressed: (){},
      child: Text("OutLinedButton"),
      style: buttonStyle(),
    );
  }

  ButtonStyle buttonStyle(){

    /// MediaQuery = 현재 화면의 정보
    /// context = 현재 위젯의 주소
    Size size = MediaQuery.of(context).size;
    return ElevatedButton.styleFrom(
      backgroundColor: Colors.redAccent,
      ///텍스트 컬러
      ///.클릭했을때 splash 컬러 변경
      foregroundColor: Colors.yellowAccent,
      shadowColor: Colors.purpleAccent,
      elevation: 5,
      fixedSize: Size(size.width *0.55,size.height*0.08),
      // maximumSize: Size(400,100), 최대 사이즈  설정
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(2),
      disabledBackgroundColor: Colors.brown,
      disabledForegroundColor: Colors.white,
      disabledMouseCursor: SystemMouseCursors.grab,
      enabledMouseCursor: SystemMouseCursors.help,
      shape: _shape(),
    );
  }

  OutlinedBorder _shape(){
    ///테두리
    BorderSide borderSide = BorderSide(
      color: Colors.yellowAccent,
      width: 3,
    );
    ///라운드
    BorderRadius borderRadius = BorderRadius.circular(16);

    return RoundedRectangleBorder(
      side: borderSide,
      borderRadius: borderRadius,

    );




  }
}
