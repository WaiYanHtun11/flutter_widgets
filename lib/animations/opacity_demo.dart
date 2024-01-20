import 'package:flutter/material.dart';
class OpacityDemo extends StatefulWidget {
  const OpacityDemo({super.key});

  @override
  State<OpacityDemo> createState() => _OpacityDemoState();
}
class _OpacityDemoState extends State<OpacityDemo> {
  double opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: ()=> setState(()=> opacity = 1 - opacity),
        child: AnimatedOpacity(
          duration: const Duration(seconds: 1),
          opacity: opacity,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
