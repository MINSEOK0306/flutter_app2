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
      title: '그리드 뷰',
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
      appBar: AppBar(title: const Text("GridView")),

      body: GridView.builder(
        // 📌 아이템 개수
        itemCount: 20,
        // 📌 Grid 설정
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          // 한 줄 개수
          crossAxisCount: 3,
          // 가로 간격
          crossAxisSpacing: 0,
          // 세로 간격
          mainAxisSpacing: 0,
        ),

        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue,

            child: Center(
              child: Text(
                "$index",

                style: const TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}