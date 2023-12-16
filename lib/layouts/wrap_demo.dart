import 'package:flutter/material.dart';
class WrapDemo extends StatelessWidget {
  const WrapDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 8.0,
        runSpacing: 4.0,
        children: [
          Chip(label: Text('Red')),
          Chip(label: Text('Green')),
          Chip(label: Text('Blue')),
          Chip(label: Text('Yellow')),
          Chip(label: Text('Orange')),
          Chip(label: Text('Pink')),
          Chip(label: Text('Gray'))
        ],
      ),
    );
  }
}
