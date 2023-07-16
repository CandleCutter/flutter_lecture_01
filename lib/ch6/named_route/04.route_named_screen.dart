import 'package:flutter/material.dart';

class RouteNamedScreen extends StatefulWidget {
  const RouteNamedScreen({super.key});

  @override
  State<RouteNamedScreen> createState() => _RouteNamedScreenState();
}

class _RouteNamedScreenState extends State<RouteNamedScreen> {
  int count = 0; //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RouteNamedScreen"),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text("count : $count"),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/second", arguments: count)
                  .then((value) {
                if (value != null && value is int) {
                  setState(() {
                    count = value;
                  });
                }
                print("value : $value");
              });
            },
            child: Text("Push Named")),
      ],
    );
  }
}
