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
        itemCount: 100,
        // 📌 Grid 설정
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          // 한 줄 개수
          crossAxisCount: 2,
          // 가로 간격
          crossAxisSpacing: 10,
          // 세로 간격
          mainAxisSpacing: 10,
        ),

        itemBuilder: (context, index) {
          return Container(
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  //랜덤이미지
                  "https://picsum.photos/300/300?random=$index",
                  fit: BoxFit.cover,),

              ),
            ),
          );
        },
      ),
    );
  }
}