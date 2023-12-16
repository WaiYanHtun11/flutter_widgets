import 'package:flutter/material.dart';
class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
            child: Container(color: Colors.red)
        ),
        Expanded(
          flex: 2,
            child: Container(color: Colors.green)
        ),
        Expanded(
          flex: 5,
            child: Container(color: Colors.blue)
        ),
      ],
    );
  }
}

