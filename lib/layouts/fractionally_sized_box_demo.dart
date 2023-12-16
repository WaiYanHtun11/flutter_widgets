import 'package:flutter/material.dart';
class FractionallySizedBoxDemo extends StatelessWidget {
  const FractionallySizedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Text('Below the the fractionally sized box demo'),
        Flexible(
            child: Center(
              child: FractionallySizedBox(
                heightFactor: 0.2,
                widthFactor: 0.5,
                child: Container(color: Colors.red),
              ),
            )
        )
      ],
    );
  }
}
