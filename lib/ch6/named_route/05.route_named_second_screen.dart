import 'package:flutter/material.dart';

class RouteNamedSecondScreen extends StatefulWidget {
  const RouteNamedSecondScreen({super.key});

  @override
  State<RouteNamedSecondScreen> createState() => _RouteNamedSecondScreenState();
}

class _RouteNamedSecondScreenState extends State<RouteNamedSecondScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments;

    /// args 라는 변수를 int 타입으로 변환(casting)
    count = args as int;
    return Scaffold(
      appBar: AppBar(
        title: Text("RouteNamedSecondScreen"),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(count.toString()),
        ElevatedButton(
            onPressed: () {
              /// Navigator pop
              Navigator.pop(
                context,
                count + 1,
              );
            },
            child: Text('Pop')),
        ElevatedButton(onPressed: () {
          Navigator.pushReplacementNamed(context, "/third");

        }, child: Text("PushNamedReplacement")
        ),
        ElevatedButton(onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context,"/third",
                (route)=>route.isFirst,);

        }, child: Text("pushNamedAndRemoveUntil")),
        ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, "/third");
        }, child: Text("go Third"))

      ],
    );
  }
}
