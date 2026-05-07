import 'package:flutter/material.dart';

void main() {
  print("hello world");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(flex: 1, child: Container(height: 50, color: Colors.blue)),
              Expanded(flex: 2, child: Container(height: 50, color: Colors.red)),
              Expanded(flex: 1, child: Container(height: 50, color: Colors.black)),
              // Container(height: 50, width: 50,color: Colors.red,),

              //Expanded(child: Container(height: 50, color: Colors.green)),
              //Container(height: 50, width: 50,color: Colors.green,),


              //Container(height: 50, width: 50,color: Colors.blue,),
            ],
          ),
        )
      )
    );
  }
}
