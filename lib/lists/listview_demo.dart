import 'package:flutter/material.dart';
class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  Widget buildItem(index){
    return Card(
      child: ListTile(
        leading: Image.asset('assets/images/bird.jpeg'),
        title: Text('Bird $index'),
        subtitle: const Text('Subtitle of Bird'),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
        padding: const EdgeInsets.all(8),
        itemBuilder: (context,index){
            return buildItem(index);
        }
    );
  }
}
