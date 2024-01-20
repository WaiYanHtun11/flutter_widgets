import 'dart:math';

import 'package:flutter/material.dart';
class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({super.key});

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  final rand = Random();
  double width = 100;
  double height = 100;
  double radius = 8;
  Color color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        AnimatedContainer(
            duration: const Duration(seconds: 1),
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(radius)
          ),
          curve: Curves.bounceOut,
          child: const FlutterLogo(),
        ),
        ElevatedButton(
            onPressed: (){
              setState(() {
                width = rand.nextInt(100).toDouble() + 50;
                height = rand.nextInt(100).toDouble() + 50;
                radius = rand.nextInt(50).toDouble();
                color = Color.fromRGBO(
                  rand.nextInt(256),
                  rand.nextInt(256),
                  rand.nextInt(256),
                  1
                );
              });
            },
            child: const Text('Change')
        )
      ],
    );
  }
}
