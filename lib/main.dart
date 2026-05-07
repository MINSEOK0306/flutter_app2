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
          title: Text("마진과 패딩"),
          backgroundColor: Colors.blue,
        ),

        body: Column(
          children:[
            Container(
              width:150,
              height: 150,
              margin: EdgeInsets.only(
                  top: 20,
                  left: 10,
                  right: 10,
                  bottom: 5),
              padding: EdgeInsets.all(30),
              color: Colors.red,
                child: Center(
                  child: Text(
                  '마진연습',
                   style: TextStyle(color: Colors.white, fontSize: 20),)
              )
            )
          ],
        ),
      ),
    );
  }
}