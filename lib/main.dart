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
        backgroundColor: Color(0xFFFDE8EC),

        appBar: AppBar(
          backgroundColor: Color(0xFFFDE8EC),
          elevation: 0,
          title: Text(
            'Sweet Sew',
            style: TextStyle(
              color: Color(0xFFFF8C42),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),

        // ✅ 핵심 수정 1: SafeArea + Center 로 감싸서 정중앙 정렬 보장
        body: SafeArea(
          child: Center(
            // ✅ 핵심 수정 2: SingleChildScrollView 로 오버플로우 방지
            child: SingleChildScrollView(
              child: Column(
                // ✅ 핵심 수정 3: 가로/세로 정렬 모두 명시적으로 center
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ✅ 핵심 수정 4: Column 이 필요한 만큼만 공간 차지
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'asset/img/123.png',
                    width: 280,
                    height: 350, // 화면에 맞게 살짝 축소
                    fit: BoxFit.fill,
                  ),
                  SizedBox(height: 20),
                  // ✅ 핵심 수정 5: 좌우 margin 제거
                  // (좌우 margin 이 비대칭이면 가운데 정렬이 어긋나 보일 수 있어요)
                  Text(
                    'NeedLework',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'is voguish',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),

                  Container(
                    width: 250,
                    child: Text(
                      'Handicraft lessons from the best designers',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}