import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  Widget buildItem(){
    return Card(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bird.jpeg'),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(16),
      itemCount: 60,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 16,
          mainAxisSpacing: 16
        ),
        itemBuilder: (context,index){
          return buildItem();
        }
    );
  }
}
