import 'package:flutter/material.dart';
class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      leading: Image.asset('assets/images/bird.jpeg'),
      title: const Text('This is a bird'),
      subtitle: const Text('This is the sub titles of a bird,This is the sub titles of a bird,This is the sub titles of a bird'),
      trailing: const Icon(Icons.chevron_right),
    );
  }
}
