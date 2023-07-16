import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogScreen extends StatefulWidget {
  const DialogScreen({super.key});

  @override
  State<DialogScreen> createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DialogScreen"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              showCupertinoDialog(
                barrierDismissible: false,
                // barrierColor: Colors.transparent,
                context: context,
                builder: (context) {
                  return Dialog(
                    backgroundColor: Colors.grey.shade300,
                    shadowColor: Colors.orangeAccent,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: SizedBox(
                      width: 150,
                      height: 250,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            "다이얼로그",
                            style: TextStyle(fontSize: 20),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("확인"))
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Text("show dialog"),
          ),
        ],
      ),
    );
  }
}
