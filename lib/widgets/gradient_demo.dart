import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
class GradientDemo extends StatelessWidget {
  const GradientDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: const Text('App Bar with Gradient Colors'),
        gradient:  const LinearGradient(
          colors: [Colors.deepOrange,Colors.blueAccent]
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [Colors.red,Colors.green,Colors.blue],
                begin: Alignment.topLeft,
                end:  Alignment.bottomRight,
                stops: [0.2,0.5,0.9]
              ),
            ),
            alignment: Alignment.center,
            child: const Text('Linear Gradient'),
          ),
          const SizedBox(height: 24),
          Container(
            height: 300,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [Colors.blue,Colors.green,Colors.deepOrange],
                radius: 0.8
              )
            ),
            alignment: Alignment.center,
            child: const Text('Radial Gradient'),
          ),
          const SizedBox(height: 24),
          Container(
            height: 300,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: SweepGradient(
                  colors: [Colors.red,Colors.green,Colors.blue]
              )
            ),
            alignment: Alignment.center,
            child: const Text('Sweep Gradient'),
          )
        ],
      ),
    );
  }
}
