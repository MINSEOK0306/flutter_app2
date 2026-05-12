import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DicePage()
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dice_num = 4;
  final randomizer = Random();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "asset/img/dice-$dice_num.png",
                  // "asset/img/dice-2.png",
                  // "asset/img/dice-3.png",
                  // "asset/img/dice-4.png",
                  // "asset/img/dice-5.png",
                  width: 200,
                ),
                SizedBox(height: 20,),
                TextButton(
                    onPressed: (){
                      setState(() {
                        dice_num = Random().nextInt(6) + 1; //1부터 6까지 랜덤실행(1이 없으면 0부터 5까지 +1이 있어야 1부터 6까지)
                        print(dice_num);
                      });


                    },
                    child: Text("주사위게임"))
              ],
            ),
          ),
        )
    );
  }
}


