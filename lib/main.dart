import 'package:flutter/material.dart';
import 'package:flutter_application_2/one%20list.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: HomeUi(),
    );
  }
}