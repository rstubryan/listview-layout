import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Expanded Widget')),
        body: Column(
          children: [
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
              child: Center(
                child: Text('Java Programmer'),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                height: 100,
                width: 100,
                child: Center(
                  child: Text('Phyton Programmer'),
                ),
              ),
            ),
            Container(
              color: Colors.green,
              height: 100,
              width: 100,
              child: Center(
                child: Text('Flutter Programmer'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
