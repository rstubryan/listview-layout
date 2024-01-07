import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Programming Bootcamp")),
        body: _MyAppState(),
      ),
    );
  }
}

class _MyAppState extends StatelessWidget {
  final List<Map<String, String>> bootcamp = [
    {
      'name': 'Java Programming',
      'image':
          'https://miro.medium.com/v2/resze:fit:720/format:webp/1*JHQeEn6Gd3ehhYlUd7DN1Q.jpeg'
    },
    {
      'name': 'Python Programming',
      'image': 'https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bootcamp.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(bootcamp[index]['name']!),
          subtitle: Text("Select Your Programming"),
          leading: Image.network(
            bootcamp[index]['image']!,
            width: 100,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
