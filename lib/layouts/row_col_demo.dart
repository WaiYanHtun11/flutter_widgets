import 'package:flutter/material.dart';
class RowColumnDemo extends StatelessWidget {
  const RowColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    var items = const [
      Icon(Icons.star,size: 50),
      Icon(Icons.star,size: 100),
      Icon(Icons.star,size: 50)
    ];

    return Scaffold(
      body: Container(
        color: Colors.yellow,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: items,
        ),
      ),
    );
  }
}
