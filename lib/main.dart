import 'package:flutter/material.dart';
import 'package:restapicomments/screens/MainBody.dart';
import 'package:restapicomments/screens/mycomments.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainBody(),
    );
  }
}
