import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class news extends StatefulWidget {
  const news({super.key});

  @override
  State<news> createState() => _newsState();
}

class _newsState extends State<news> {
  List<Widget> children = const <Widget>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ДЕН СООЛУК ИНДЕКСИ (BMI)',
        style: TextStyle(color: Color.fromRGBO(245, 245, 245, 1)),),
        backgroundColor: Colors.grey,
      ),
     body: Container(
      child: Column(children: [Text('Жыйынтык',style:TextStyle(fontSize: 40),)]),
     ),




     
           );
  }
}