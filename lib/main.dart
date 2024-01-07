import 'package:flutter/material.dart';

void main() {
  runApp(ListV());
}

class ListV extends StatelessWidget {
  final List<Widget> w = [];

  ListV() {
    for (int i = 1; i <= 50; i++) {
      w.add(ListTile(
        leading: Icon(Icons.favorite, color: Colors.amber),
        title: Text("List $i"),
        subtitle: Text("Learning list view"),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("List View")),
        body: ListView(
          children: w,
        ),
      ),
    );
  }
}
