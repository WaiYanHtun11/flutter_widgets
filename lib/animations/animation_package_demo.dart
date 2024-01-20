import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
class AnimationPackageDemo extends StatelessWidget {
  const AnimationPackageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          child: OpenContainer(
            closedBuilder: (ctx,action){
              return const ListTile(
                title: Text('Click To Open'),
                trailing: Icon(Icons.chevron_right),
              );
            },
            openBuilder: (ctx,action){
              return const Scaffold(
                body: Center(
                  child: Text('New Page'),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
