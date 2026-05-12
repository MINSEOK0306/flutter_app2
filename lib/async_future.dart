import 'package:flutter/material.dart';
import 'dart:math';

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
      return '사용자_달러_$id';
  }
  );
}

//비동기
void main(){
  first_work();
  //second_work();
  // downloadGame();
  fetchusername(1).then((name){
    print('이름: $name');
  // 시간이 걸릴 작업이오니 밑에꺼부터 실행햐라
  });
  third_work();
}
