import 'package:flutter/material.dart';
class BasicAppBarDemo extends StatelessWidget {
  const BasicAppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: const Icon(Icons.home),
        title: const Text('Basic App Bar'),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.directions_bike_outlined)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.directions_bus_outlined)),
          PopupMenuButton(
              itemBuilder: (context){
                return const [
                  PopupMenuItem(child: Text('Boat')),
                  PopupMenuItem(child: Text('Train'))
                ];
              }
          )
        ],
      ),
    );
  }
}
