// ignore_for_file: camel_case_types, prefer_const_constructors

import 'dart:math';

import 'package:firstapp/result.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BMICalc extends StatefulWidget {
  const BMICalc({super.key});

  @override
  State<BMICalc> createState() => _BMICalcState();
}

class _BMICalcState extends State<BMICalc> {
  double height = 155;
  int weight = 50;
  int age = 20;
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 22, 50),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 0, 21, 50),
        title: Center(
            child: Text(
          "BMI CALCULATOR",
          style: TextStyle(fontWeight: FontWeight.w600),
        )),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      //Color.fromARGB(9, 255, 255, 255)
                      //Color.fromARGB(118, 72, 75, 81),
                      child: Container(
                        decoration: BoxDecoration(
                            color: isMale
                                ? Color.fromARGB(255, 0, 22, 50)
                                : Color.fromARGB(9, 255, 255, 255),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                topLeft: Radius.circular(10))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.male,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 100,
                            ),
                            SizedBox(height: 0),
                            Text(
                              "MALE",
                              style: TextStyle(
                                color: Color.fromARGB(255, 139, 139, 139),
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: !isMale
                                ? Color.fromARGB(255, 0, 22, 50)
                                : Color.fromARGB(9, 255, 255, 255),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.female,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 100,
                            ),
                            SizedBox(height: 0),
                            Text(
                              "FEMALE",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 139, 139, 139),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(9, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10)),
                // ignore: prefer_const_literals_to_create_immutables
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "HEIGHT",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "${height.round()}",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w600,
                              fontSize: 70,
                            ),
                          ),
                          Text(
                            "CM",
                            style: TextStyle(
                              color: Color.fromARGB(255, 139, 139, 139),
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                          thumbColor: Color.fromARGB(225, 255, 255, 255),
                          inactiveColor: Color.fromARGB(57, 241, 73, 22),
                          activeColor: Color.fromARGB(255, 241, 73, 22),
                          value: height,
                          min: 80,
                          max: 230,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                            print(value.toInt());
                          })
                      //Slider(value: 50, onChanged:(value){})
                    ]),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(9, 255, 255, 255),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                topLeft: Radius.circular(10))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "AGE",
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor:
                                      Color.fromARGB(255, 0, 22, 50),
                                  mini: true,
                                  heroTag: age--,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 80,
                                  child: Text(
                                    "$age",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                                FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor:
                                      Color.fromARGB(255, 0, 22, 50),
                                  mini: true,
                                  heroTag: age++,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                ),
                              ],
                            ),
                            Text(
                              "YEARS",
                              style: TextStyle(
                                color: Color.fromARGB(255, 139, 139, 139),
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(9, 255, 255, 255),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "WEIGHT",
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor:
                                      Color.fromARGB(255, 0, 22, 50),
                                  mini: true,
                                  heroTag: weight--,
                                  onPressed: () {
                                    if (weight > 20)
                                      // ignore: curly_braces_in_flow_control_structures
                                      setState(() {
                                        {
                                          weight--;
                                        }
                                      });
                                  },
                                  child: Icon(Icons.remove),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 80,
                                  child: Text(
                                    "$weight",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                                FloatingActionButton(
                                  elevation: 5,
                                  backgroundColor:
                                      Color.fromARGB(255, 0, 22, 50),
                                  mini: true,
                                  heroTag: weight++,
                                  onPressed: () {
                                    if (weight < 400)
                                      // ignore: curly_braces_in_flow_control_structures
                                      setState(() {
                                        weight++;
                                      });
                                  },
                                  child: Icon(Icons.add),
                                ),
                              ],
                            ),
                            Text(
                              "KGS",
                              style: TextStyle(
                                color: Color.fromARGB(255, 139, 139, 139),
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
              height: 70,
              width: double.infinity,
              color: Color.fromARGB(255, 241, 73, 22),
              child: MaterialButton(
                onPressed: () {
                  double result = weight / pow(height / 100, 2);
                  // ignore: avoid_print
                  print(result.round());
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BMIresult( result: result, isMale: isMale,age: age)));
                },
                child: Text(
                  "CALCULATE",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ))
        ],
      ),
    );
  }
}
