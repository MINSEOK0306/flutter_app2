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
        body: Column(
          children: [

            Expanded(
              flex: 3,
              child: Container(
                color: Colors.lightBlue,
              ),
            ),

            Expanded(
              flex: 1,
              child: Container(
                color: Colors.yellow,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Icon(
                      Icons.settings,
                      size: 40,
                      color: Colors.blue,
                    ),

                    Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}