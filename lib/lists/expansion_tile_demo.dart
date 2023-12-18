import 'package:flutter/material.dart';
class ExpansionTileDemo extends StatelessWidget {
  const ExpansionTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          child: ExpansionTile(
            shape: Border.all(color: Colors.transparent),
            leading: const Icon(Icons.image),
            title: const Text('Bird'),
            children: [
              Image.asset('assets/images/bird.jpeg'),
              const Text('This is description of a bird')
            ],
          ),
        ),
      ),
    );
  }
}
