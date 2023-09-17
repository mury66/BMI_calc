// ignore_for_file: prefer_const_constructors, empty_constructor_bodies, avoid_print

import 'package:flutter/material.dart';

class BMIresult extends StatelessWidget {
  const BMIresult(
      {super.key,
      required this.result,
      required this.isMale,
      required this.age});

  final double result;
  final bool isMale;
  final int age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 22, 50),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 0, 21, 50),
        // ignore: prefer_const_constructors
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(60, 220, 60, 220),
        child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(9, 255, 255, 255),
                borderRadius: BorderRadius.circular(10)),
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "GENDER : ${isMale? "MALE": "FEMALE"}",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  "AGE : $age",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  "RESULT : ${result.toInt()}",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
