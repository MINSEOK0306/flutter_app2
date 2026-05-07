import 'package:flutter/material.dart';

void main() {
  print("hello world");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(title: Text("레이아웃 예제"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                  flex: 3,
                  child: Container(color: Colors.lightBlue),),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,),),
              Container(
                color: Colors.yellow,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.settings,
                    size: 40,
                    color: Colors.blue),
                    Icon(Icons.person,
                    size: 40,
                    color: Colors.red),
                  ]
              )
            ],
          ),
        ),
      ),
    );
  }
}


//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: Colors.deepPurple,
//         ),
//       ),
//       home: const MyHomePage(title: '나는 데이터분석가'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   // int _counter = 0;
//   //
//   // void _incrementCounter() {
//   //   setState(() {
//   //     _counter++;
//   //   });
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor:
//         Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('나는 자연인입니다.'),
//             Text('나는 데이터분석가입니다'),
//             // Text('카운트: $_counter'),
//           ],
//         ),
//       ),
//
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: _incrementCounter,
//       //   tooltip: 'Increment',
//       //   child: const Icon(Icons.add),
//       // ),
//     );
//   }
// }