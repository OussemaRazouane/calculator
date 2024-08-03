import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int n1 = 0, n2 = 0;
  String op = "";
  num? result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 150,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.green.shade700,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 70,
                    height: 85,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 79, 255, 88),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "$n1",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "$op",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 70,
                    height: 85,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 79, 255, 88),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "$n2",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Text(
                    "=",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 70,
                    height: 85,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 79, 255, 88),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "$result",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 315,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "The first number",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              n1++;
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            shape: const CircleBorder(),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              n1--;
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            shape: const CircleBorder(),
                          ),
                          child: const Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: 35,
                          ),
                        )
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            result = n1 + n2;
                            op = "+";
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          shadowColor: const Color.fromARGB(255, 79, 255, 88),
                          elevation: 15,
                        ),
                        child: const Text(
                          "+ Addition",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            result = n1 * n2;
                            op = "X";
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          shadowColor: const Color.fromARGB(255, 79, 255, 88),
                          elevation: 15,
                        ),
                        child: const Text(
                          "X Multiplication",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            result = pow(n1, n2);
                            op = "^";
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          shadowColor: const Color.fromARGB(255, 79, 255, 88),
                          elevation: 15,
                        ),
                        child: const Text(
                          "^ Exponentiation",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "The second number",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              n2++;
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            shape: const CircleBorder(),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              n2--;
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            shape: const CircleBorder(),
                          ),
                          child: const Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: 35,
                          ),
                        )
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            result = n1 - n2;
                            op = "-";
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          shadowColor: const Color.fromARGB(255, 79, 255, 88),
                          elevation: 15,
                        ),
                        child: const Text(
                          "- Subtraction",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            result = n1 / n2;
                            op = "/";
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          shadowColor: const Color.fromARGB(255, 79, 255, 88),
                          elevation: 15,
                        ),
                        child: const Text(
                          "/ Division",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            result = n1 % n2;
                            op = "%";
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          shadowColor: const Color.fromARGB(255, 79, 255, 88),
                          elevation: 15,
                        ),
                        child: const Text("% modulus",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ))),
                  ],
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              n1 = 0;
              n2 = 0;
              result = 0;
              op = "";
            },
            child: const CircleAvatar(
              radius: 90,
              backgroundImage: NetworkImage(
                  "https://i0.wp.com/images.squarespace-cdn.com/content/v1/5ff36df450339566e9be4034/1611603249028-K1TG0X50TD49Q5U5YISK/ezgif-5-486e88066809.gif?ssl=1"),
              backgroundColor: Color.fromARGB(255, 22, 131, 27),
              child: Text("Reset All",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      )),
    );
  }
}
