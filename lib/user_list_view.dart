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
          : ListView.separated(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            // 왼쪽: 숫자가 들어간 원형 테두리
            leading: Container(
              child: Text(
                '${user['id']}',
                style: const TextStyle(fontSize: 13),
              ),
            ),
            // 가운데 위: 이름 (굵게)
            title: Text(
              user['name'],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            // 가운데 아래: 이메일
            subtitle: Text(user['email']),
            // 오른쪽: > 화살표
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // 클릭 시 동작 (상세 페이지 이동 등)
            },
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(thickness: 1, height: 1);
        },
      ),
    );
  }
}