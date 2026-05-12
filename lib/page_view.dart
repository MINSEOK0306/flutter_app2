import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// MaterialApp 은 StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '페이지 뷰',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

// Scaffold 화면은 StatefulWidget
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("페이지뷰"),
      ),

      body: PageView(
        children: [

          Container(
            color: Colors.red,
            child: Center(
              child: Text(
                "1 페이지",
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                "2 페이지",
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
          Container(
            color: Colors.yellow,
            child: Center(
              child: Text(
                "3 페이지",
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}