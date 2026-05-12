import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserPage()
    );
  }
}

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {

  String name = "";
  String email = "";
  String phone = "";
  //처음 온보딩에서는 아무것도 뜨질 않음

  bool isLoading = false;
  
  //비동기함수 만들기
  Future<void> fetchUser() async{
    isLoading = true; // 유저 정보를 가지고 오는 중이다
    
    var response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/users/2")
    );

    if(response.statusCode == 200){
      var data = jsonDecode(response.body);


      setState(() {
        name = data["name"];
        email = data["email"];
        phone = data["phone"];

        isLoading = false;
      });
      // name = data["name"];
      // name = data["email"];
      // name = data["phone"];
      //
      // isLoading = false;
    }
    else
      {
        isLoading = false;
        print("데이터 가져오기 실패");
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("비동기 예제"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text("이름: $name"),
              Text("EMAIL: $email"),
              Text("전화번호: $phone"),
              ElevatedButton(
                  onPressed: fetchUser,
                  child: Text("사용자 정보 가져오기"))
            ],
          )
        )
      )
    );
  }
}
