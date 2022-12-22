import 'package:flutter/material.dart';

class calculate extends StatelessWidget {
  const calculate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
     color: Color.fromARGB(255, 222, 40, 131),
      borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(5),
      width: double.infinity,
      child: Text('CALCULATE',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40,
          )),
          
    );
    
  }
}