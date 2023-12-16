import 'package:flutter/material.dart';
class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          // Container(width: 300,height: 300,color: Colors.red),
          // Container(width: 200,height: 200,color: Colors.green),
          // Container(width: 100,height: 100,color: Colors.blue),
          Image.asset('assets/images/bird.jpeg'),
          const Text(
              'Bird',
              style: TextStyle(
                color: Colors.red,
                fontSize: 22,
                fontWeight: FontWeight.bold
              )
          ),
        ],
      ),
    );
  }
}
