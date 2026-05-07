import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text("sizedbox 예제"),
          backgroundColor: Colors.blue,
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "위에 텍스트",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 50),
              Text(
                "아래 텍스트",
                style: TextStyle(fontSize: 20),

              )
            ],
          )
        ),
      ),
    );
  }
}