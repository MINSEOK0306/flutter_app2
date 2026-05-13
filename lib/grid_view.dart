import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '사용자리스트',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> users = [];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() {
        users = jsonDecode(utf8.decode(response.bodyBytes));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("사용자 리스트"),
      ),
      body: users.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(                              // ← 추가
        onRefresh: fetchUsers,                       // ← 당기면 호출
        child: ListView.separated(
          physics: const AlwaysScrollableScrollPhysics(), // ← 추가
          itemCount: users.length,                   // 그대로 (10 자동)
          itemBuilder: (context, index) {
            final user = users[index];
            return ListTile(
              leading: Container(
                child: Text(
                  '${user['id']}',
                  style: const TextStyle(fontSize: 13),
                ),
              ),
              title: Text(
                user['name'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(user['email']),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(thickness: 1, height: 1);
          },
        ),
      ),
    );
  }
}


// 1. 앱 켜짐
// ↓
// 2. main() → MyApp() → MaterialApp 그림
// ↓
// 3. HomePage 등장 → _HomePageState 만들어짐
// ↓
// 4. initState() 호출됨 (단 1번)
// ↓
// 5. fetchUsers() 실행 → API 요청
// ↓
// 6. 화면은 일단 로딩 빙글빙글 (users가 비어있어서)
// ↓
// 7. 잠시 후 API 응답 도착
// ↓
// 8. setState() 호출 → users에 10명 데이터 채워짐
// ↓
// 9. build() 자동 재실행 → 리스트 화면 그려짐
// ↓
// 10. 사용자가 아래로 당김 → fetchUsers() 다시 실행