

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Height extends StatelessWidget {
  const Height({super.key,this.onChanged,this.hap});
  final  void Function(double)? onChanged ;
  final double? hap;
  

  @override
  Widget build(BuildContext context) {
    return  Container(
              decoration: BoxDecoration(
                  color: const Color(0xff1D1E32),
                  borderRadius: BorderRadius.circular(15)),
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  const Text(
                    'Height',
                    style: TextStyle(fontSize: 30, color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '180',
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const Text(
                        'cm',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      thumbColor: Colors.red,
                    ),
                    child: Slider(
                        max: 220,
                        min: 60,
                        value: hap!,
                        onChanged:onChanged
                        // (adamdynTandoosu) {
                        // hap;
                        //   uchurdagyDanniy = adamdynTandoosu;
                        //   setState(() {});
                        //   log('uchurdagyDanniy ===> $uchurdagyDanniy');
                        // }
                        ),
                  ),
                ],
              ),
            );
  }
}