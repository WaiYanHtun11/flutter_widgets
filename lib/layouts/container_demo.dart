import 'package:flutter/material.dart';
class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            transform: Matrix4.rotationZ(20),
            decoration: BoxDecoration(
              border: Border.all(width: 5),
              color: Colors.red,
              borderRadius: BorderRadius.circular(10)
            ),
          ),
        ),
      ),
    );
  }
}
