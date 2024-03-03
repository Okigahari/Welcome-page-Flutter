// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          home: Home(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Color.fromARGB(255, 242, 221, 212),
        child: Column(
          children: [
            Stack(
              children: [
                Transform.rotate(
                  angle: -math.pi / 2,
                  child: Container(
                    width: 360,
                    height: 360,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(248, 252, 204, 183),
                          Color.fromARGB(1, 242, 221, 212)
                        ]),
                        color: Colors.purple[100]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 45, top: 220),
                  child: Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/woman.png")),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Material(
                  color: Color.fromARGB(0, 1, 1, 1),
                  child: Text(
                    'Welcome, dear!',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 119, 105),
                        fontSize: 30,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Material(
                  color: Color.fromARGB(0, 1, 1, 1),
                  child: Text(
                    'We will help you find yourself',
                    style: TextStyle(
                        color: Color.fromARGB(200, 255, 119, 105),
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 120,
            ),
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    padding: EdgeInsets.only(top: 20, left: 30),
                    width: 220,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromARGB(248, 255, 119, 105),
                    ),
                    child: Material(
                      color: Color.fromARGB(0, 1, 1, 1),
                      child: Text(
                        'Create an account',
                        style: TextStyle(
                            color: Color.fromARGB(248, 247, 208, 192),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
