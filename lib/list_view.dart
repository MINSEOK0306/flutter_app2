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
      title: 'ListView Example',
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
  late List<String> items;
  @override
  void initState() {
    super.initState();
    items = List.generate(10,(index) => "아이템 $index",);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView.separated"),
      ),
      body: ListView.separated(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              setState(() {
                items[index] =
                "${items[index]} 클릭됨";
              });
            },
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 1,
          );
        },
      ),
    );
  }
}
