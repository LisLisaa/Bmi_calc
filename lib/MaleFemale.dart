import 'package:flutter/material.dart';

class MaleFemale extends StatelessWidget {
  const MaleFemale({ Key? key,
   required this.MaleColor,
   this.name,
   this.icon,
   
   }): super(key: key);
  final Color? MaleColor;
  
  
  final String? name;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: MaleColor,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.all(5),
      child: Column(
        children:  [
          Icon(
            icon,
            size: 90,
            color: Colors.white,
          ),
          Text(
            name!.toUpperCase(),
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
