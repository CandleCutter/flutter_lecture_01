import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sprintf/sprintf.dart';

import '02.open_api_model.dart';

class OpenApiScreen extends StatefulWidget {
  const OpenApiScreen({super.key});

  @override
  State<OpenApiScreen> createState() => _OpenApiScreenState();
}

class _OpenApiScreenState extends State<OpenApiScreen> {
  List<OpenApiModel> dataList = [];
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OpenApiScreen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize: Size(300, 60)),

              ///삼항연산자 :
              ///loading ? = loading
              ///? null = ture가 맞으면 null
              ///: () = call() true 가 아니라면 ()=>call
              onPressed: loading ? null : () => call(),
              child:
                  loading ? CircularProgressIndicator() : const Text("API 호출")),
          if (dataList.isNotEmpty) ...[
            Expanded(
                child: ListView.builder(
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                return Text(dataList[index].parseValue());
              },
            ))
          ],
        ],
      ),
    );
  }

  void call() async {
    dataList.clear(); // 새로운 데이터가 추가될 때 기존 데이터는 초기화
    loading = true;
    setState(() {});
    Dio dio = Dio();

    String baseUrl = "https://apis.data.go.kr";
    String path = "/1360000/VilageFcstInfoService_2.0/getVilageFcst?";
    String query =
        "serviceKey=%s&pageNo=%d&numOfRows=%d&dataType=JSON&base_date=20230730&base_time=0800&nx=58&ny=125";
    String serviceKey =
        "WaErjguDxFJVNp17nrXK9F%2BBu5YZHHHQ%2FUcbThuiS2hCCmAyY02ftpXu6%2Ba8CFNsJfLPHsZbnmbNBV9ZJeqljg%3D%3D";

    String newQuery = sprintf(query,[serviceKey,1,10]);
    String url = "$baseUrl$path$newQuery";


    //String url = "https://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getVilageFcst?serviceKey=WaErjguDxFJVNp17nrXK9F%2BBu5YZHHHQ%2FUcbThuiS2hCCmAyY02ftpXu6%2Ba8CFNsJfLPHsZbnmbNBV9ZJeqljg%3D%3D&pageNo=1&numOfRows=10&dataType=JSON&base_date=20230730&base_time=0800&nx=58&ny=125";

    await Future.delayed(Duration(seconds: 1)); // 클릭 후 3초 동안 버튼 비활성화
    Response response = await dio.get(url);
    var json = response.data["response"]["body"]["items"]["item"];
    List<OpenApiModel> data = (json as Iterable).map<OpenApiModel>((e) {
      return OpenApiModel.fromJson(e);
    }).toList();

    dataList.addAll(data);
    loading = false;
    setState(() {});
  }
}
