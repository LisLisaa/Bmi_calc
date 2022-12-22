import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AgeWeight extends StatelessWidget {
  const AgeWeight ({super.key,
  this.age3,
  this.name,
  this.onMinus,
  this.onPlus
  }); 
  final int? age3;
  final String? name ;
    final void Function()? onMinus;
  final void Function()? onPlus;


  @override
  Widget build(BuildContext context) {
    return Container(
                  decoration: const BoxDecoration(
                      color: Color(0xff1D1E32),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                       Text(
                        name!.toUpperCase(),
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        age3.toString(),
                        style: const TextStyle(
                          fontSize: 45,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.grey, shape: BoxShape.circle),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                customBorder: const CircleBorder(),
                                splashColor: Colors.red,
                                onTap: onMinus,
                                child:
                                  Icon(
                                  Icons.remove,
                                  size: 54,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.grey, shape: BoxShape.circle),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                customBorder: const CircleBorder(),
                                splashColor: Colors.red,
                                onTap:onPlus,
                                child:
                                
                                 Icon(
                                  Icons.add,
                                  size: 54,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              
            
  }
}