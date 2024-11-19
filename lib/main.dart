import 'package:flutter/material.dart';
import 'package:playground2/article_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spaceflight News',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ArticlesScreen(),
    );
  }
}
