import 'package:flutter/material.dart';
import 'dart:math';
import 'package:http/http.dart' as http;

void first_work(){
  print("첫번째 작업");
}

void second_work(){
  print("두번째 작업");
}
void third_work(){
  print("세번째 작업");
}

//비동기 함수
Future<void> downloadGame(){

  return Future.delayed(

    const Duration(seconds: 2),(){
    print("두번째 작업 다운로드 완료") ;
  },
  );
}

Future<String> fetchusername(int id){
  return Future.delayed(
    Duration(seconds: 1), (){
      if(id <= 0) throw ArgumentError("잘못된 아이디입니다.");
      return '사용자_$id';
  }
  );
}

//비동기
void main() async{

  // print("네이버 요청 시작");
  //
  // var username = await fetchusername(1);
  // print(username);

  // fetchusername(-1).then((name){
  //   print('이름: $name');
  //   // 시간이 걸릴 작업이오니 밑에꺼부터 실행햐라
  // }).catchError((error){
  //   print("오류: $error");
  // });
  ////-----------------------
  // http.get(
  //   Uri.parse("https://www.naver.com"),
  // ).then((response){
  //   print(response.body);
  // });
  //-----------------------------> get ~ then을 더 편하게 하기 위해 밑에 async(비동기) ~ var ~ await로 더 쉽게(then -> await)
  var response = await http.get(
    Uri.parse("https://www.naver.com"),
  );
  print(response.body);

  // first_work();
  // //second_work();
  // // downloadGame();

  // third_work();
}
