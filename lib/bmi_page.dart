import 'dart:math';
import 'package:bmicalculate/bmi_result.dart';
import 'package:flutter/material.dart';

class BMI_Screen extends StatefulWidget {
  @override
  _BMI_ScreenState createState() => _BMI_ScreenState();
}

class _BMI_ScreenState extends State<BMI_Screen> {
  bool isMale = true;
  double height = 180.0;
  int weight = 40;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          "BMI Calculate",
          style: TextStyle(
              fontSize: 25,
              fontFamily: "roboto",
              color: Color.fromARGB(255, 29, 11, 78),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          /*Male or Female Section*/
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.male,
                                size: 100.0,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                "MALE",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white.withOpacity(0.8),
                                ),
                              ),
                            ]),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: isMale ? Colors.blue : Colors.deepPurple,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.female,
                                size: 100.0,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                "FEMALE",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white.withOpacity(0.8),
                                ),
                              ),
                            ]),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: !isMale ? Colors.pink : Colors.deepPurple,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          /*Height Section*/
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  color: Colors.deepPurple,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${height.round()}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 60.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          const Text(
                            "CM",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        min: 80.0,
                        max: 220.0,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                        activeColor: Color.fromARGB(255, 251, 252, 253),
                        inactiveColor: Color.fromARGB(255, 145, 146, 153),
                        thumbColor: Color.fromARGB(255, 29, 11, 78),
                      ),
                    ]),
              ),
            ),
          ),

          /*Weight and Age Section*/
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                        Text(
                          "${weight}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 60.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              heroTag: 'Weight-',
                              mini: true,
                              child: const Icon(
                                Icons.remove,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              heroTag: 'Weight+',
                              mini: true,
                              child: Icon(
                                Icons.add,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                        Text(
                          "${age}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 60.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              heroTag: 'age-',
                              mini: true,
                              child: const Icon(
                                Icons.remove,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              heroTag: 'age+',
                              mini: true,
                              child: const Icon(
                                Icons.add,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ],
            ),
          )),

          /*Calculate Button Section*/
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 75.0,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 29, 11, 78),
                borderRadius: BorderRadius.circular(10)),
            child: MaterialButton(
              onPressed: () {
                double result = weight / pow(height / 100, 2);
                print(result.round());
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BMIResultScreen(
                        result: result,
                        age: age,
                        isMale: isMale,
                      ),
                    ));
              },
              child: const Text(
                "CALCULATE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
