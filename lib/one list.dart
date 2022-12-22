
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/GenderEnam.dart';
import 'package:flutter_application_2/Height.dart';
import 'package:flutter_application_2/AgeWeight.dart';
import 'package:flutter_application_2/calculate.dart';
import 'package:flutter_application_2/MaleFemale.dart';
import 'package:flutter_application_2/next%20list.dart';



int TayotaCorolla = 0;
int t6ayotaCamry = 1;
int tayotaWindow = 2;
Color activeColor = Colors.red;
Color inactiveColor = Color(0xff1D1E32);

class HomeUi extends StatefulWidget {
  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  Color maleColor = inactiveColor;
  Color femaleColor = inactiveColor;
  void updateColor(GenderEnum tandalganGender) {
    if (tandalganGender == GenderEnum.male) {
      if (maleColor == inactiveColor) {
        maleColor = activeColor;
        femaleColor = inactiveColor;
      } else {
        maleColor = inactiveColor;
      }
    }
    if (tandalganGender == GenderEnum.female) {
      if (femaleColor == inactiveColor) {
        femaleColor = activeColor;
        maleColor = inactiveColor;
      } else {
        femaleColor = inactiveColor;
      }
    }
    setState(() {});
  }

  double uchurdagyDanniy = 160;
  int age = 60;
  int age1 = 28;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A0E20),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Bmi Calculator',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () => updateColor(GenderEnum.male),
                  child:MaleFemale(MaleColor: maleColor,
                  name: 'male',
                  icon: Icons.male,
                  )
                ),
                InkWell(
                  onTap: () => updateColor(GenderEnum.female),
                  child: MaleFemale(MaleColor:femaleColor ,
                  name: 'female',
                  icon: Icons.female,
                  )
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
           Height(
           hap:uchurdagyDanniy ,
            onChanged: (adamdynTandoosu) {
           uchurdagyDanniy;
            uchurdagyDanniy = adamdynTandoosu;
             setState(() {});
            log('uchurdagyDanniy ===> $uchurdagyDanniy'); },
              
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               AgeWeight(
                age3:age ,
                 name: 'weight',
                 onMinus: () {
                 setState(() {});
                  age--; },
                   onPlus: () {
                 setState(() {});
                   age=age+1; },
               ),
               AgeWeight(
               age3:age1 ,
                 name: 'age',
                 onMinus: () {
                 setState(() {});
                   age1--; },
                   onPlus: () {
                 setState(() {});
                   age1=age1+1; },

            ),
          ],
        ),  
         SizedBox(
              height: 15,
            ),
         InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => news()));
            },
            child: calculate(),
          ),
      ],),
    ),);
  }
}





