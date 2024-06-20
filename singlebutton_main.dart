//single button main.dart

import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MaterialApp(home: DiceeAppBase()));
}

class DiceeAppBase extends StatefulWidget {
  const DiceeAppBase({super.key});

  @override
  State<DiceeAppBase> createState() => _DiceeAppBaseState();
}

class _DiceeAppBaseState extends State<DiceeAppBase> {
  int dice_1 = 1;
  int dice_2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF03AED2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/dice$dice_2.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()..rotateZ(3.14159),
              child: const Text(
                "Player 2",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFBF6EE),
                    fontFamily: 'Tiny5'),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  dice_1 = Random().nextInt(5) + 1;
                  dice_2 = Random().nextInt(5) + 1;
                });
              },
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(150, 60)),
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xFFFF70AB))),
              child: const Icon(Icons.play_arrow, color: Colors.white, size: 50),
            ),
            SizedBox(height: 40),
            const Text(
              "Player 1",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFBF6EE),
                  fontFamily: 'Tiny5'),
            ),
            const SizedBox(height: 40),
            Container(
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/dice$dice_1.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
