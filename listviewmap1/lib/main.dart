import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'image': '', 'status': false},
    {'name': 'Anggur', 'image': '', 'status': false},
    {'name': 'Pepaya', 'image': '', 'status': false},
    {'name': 'Pisang', 'image': '', 'status': true}
  ];

  bool areAllFruitSelected() {
    for (final fruit in fruits) {
      if (!fruit['status']) {
        return false;
      }
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Map ListView"),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            areAllFruitSelected() ? Text("Anda Memilih Semuanya") : SizedBox(),
            Expanded(
              child: ListView(
                children: fruits.map((fruit) {
                  return ListTile(
                    title: Text(fruit['name']),
                    leading: Icon(
                      Icons.favorite,
                      color: fruit["status"] ? Colors.amber : Colors.grey,
                    ),
                    shape: Border(bottom: BorderSide(color: Colors.amber)),
                    onTap: () {
                      setState(() {
                        fruit['status'] = !fruit['status'];
                      });
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
