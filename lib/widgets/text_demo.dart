import 'package:flutter/material.dart';
class TextDemo extends StatelessWidget {
  const TextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Some Text',
        style: TextStyle(
          color: Colors.orangeAccent,
          fontSize: 24,
          fontWeight: FontWeight.normal,
          decoration: TextDecoration.lineThrough,
        ),
      ),
    );
  }
}
