import 'dart:math';

import 'package:bmi_calculator/screens/ResultScreen.dart';
import 'package:bmi_calculator/widgets/GenderWidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMaleSelected = true;
  double height_in_cm = 0.5;
  int weight_in_kg = 60;
  int ageInYears = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 53, 146, 56),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 71, 164, 74),
        shadowColor: Colors.red,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isMaleSelected = true;
                    });
                  },
                  child: GenderWidget(
                      isMaleSelected: isMaleSelected, gender: "Male"),
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        isMaleSelected = false;
                      });
                    },
                    child: GenderWidget(
                        isMaleSelected: !isMaleSelected, gender: "Female")),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              decoration: BoxDecoration(
                color: const Color.fromARGB(80, 19, 7, 7),
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    10,
                  ),
                ),
              ),
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "HEIGHT",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 141, 255, 187),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: (height_in_cm * 300).toStringAsFixed(0),
                          style: const TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(
                          text: "cm",
                        ),
                      ],
                    ),
                  ),
                  Slider(
                    value: height_in_cm,
                    onChanged: (value) {
                      setState(() {
                        height_in_cm = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(80, 19, 7, 7),
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                  ),
                  width: 150,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Weight",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 141, 255, 187),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: weight_in_kg.toString(),
                              style: const TextStyle(
                                color: Color.fromARGB(255, 216, 216, 216),
                                fontSize: 30,
                              ),
                            ),
                            const WidgetSpan(
                              child: SizedBox(width: 4),
                            ),
                            const TextSpan(
                              text: "KG",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                weight_in_kg = weight_in_kg - 1;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(
                                10,
                              ),
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    30,
                                  ),
                                ),
                              ),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                weight_in_kg = weight_in_kg + 1;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(
                                10,
                              ),
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    30,
                                  ),
                                ),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(80, 19, 7, 7),
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                  ),
                  width: 150,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Age",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 141, 255, 187),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: ageInYears.toString(),
                              style: const TextStyle(
                                color: Color.fromARGB(255, 216, 216, 216),
                                fontSize: 30,
                              ),
                            ),
                            const WidgetSpan(
                              child: SizedBox(width: 4),
                            ),
                            const TextSpan(
                              text: "Years",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                ageInYears = ageInYears - 1;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(
                                10,
                              ),
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    30,
                                  ),
                                ),
                              ),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                ageInYears = ageInYears + 1;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(
                                10,
                              ),
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    30,
                                  ),
                                ),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.black54,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultScreen(
                        bmi: calculateBMI(),
                      )),
            );
          },
          child: const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Calculate',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  double calculateBMI()
  {
    var heightInM = ((height_in_cm * 300) / 100);
    double bmi = weight_in_kg / pow(heightInM, 2);
    return bmi;
  }
}
