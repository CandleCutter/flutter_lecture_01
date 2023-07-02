import 'package:flutter/material.dart';

class TextFormFieldScreen extends StatefulWidget {
  const TextFormFieldScreen({super.key});

  @override
  State<TextFormFieldScreen> createState() => _TextFormFieldScreenState();
}

class _TextFormFieldScreenState extends State<TextFormFieldScreen> {

  String textValue ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFormFieldScreen"),
      ),
      body: Column(
        children: [
          formWidget(),
          // Text(textValue),
        ],
      ),
    );
  }
  Widget formWidget(){
    return TextFormField(

      /// 글자가 바뀔때 마다 진입
      onChanged: (value) {
        ///onChanged 함수는 글자가 변경될 대 마다 호출
        ///글자가 변경될 때 마다 setState 호출
        ///화면을 갱신한다.
        print("value : $value");
        textValue=value;
        setState(() {

        });

      },
      style: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Colors.redAccent,
      cursorWidth: 2,
      cursorRadius: Radius.circular(4),
      maxLines: 3, // 화면에 보여지는 라인의 수
      maxLength: 20, // 제한 글자 수
      decoration: InputDecoration(
        hintText: " 아이디를 입력하세요",
        hintStyle: TextStyle(fontSize: 20,
        color: Colors.grey,
        ),
        enabled: true,

        ///textFormField가 enable 상태고 커서가 없을때
        enabledBorder: customBorder(3,Colors.grey),
        ///textFormField가 focus가 잡혀서 커서가 깜빡일 때
        focusedBorder: customBorder(3, Colors.green),
        errorBorder: customBorder(3, Colors.redAccent),
        focusedErrorBorder: customBorder(3, Colors.red),
        errorText: checkErrorText(),


      ),
    );
  }
  InputBorder customBorder(double width, Color color){
    return OutlineInputBorder(
      borderSide: BorderSide(
        width: width,
        color: color,
      ),
    );
  }

  String? checkErrorText(){
    if(textValue.isEmpty){
      return null;

    }
    if(textValue.length<6){
      return "6글자 이상 입력해주세요";
    }
    return null;
  }
}
