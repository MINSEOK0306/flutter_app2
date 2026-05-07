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
          title: Text("2x2 정사각형"),
          backgroundColor: Colors.blue,
        ),

        body: Column(
          children: [
            Expanded(
                child: Row(
                  children: [
                    Expanded(child: Container(color: Colors.white,)),
                    Expanded(child: Container(color: Colors.orange))
                  ],
            )),
            Expanded(
                child: Row(
                  children: [
                    Expanded(child: Container(color: Colors.green,)),
                    Expanded(child: Container(color: Colors.pink))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}