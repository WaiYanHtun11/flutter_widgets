import 'package:flutter/material.dart';
class SwipeDemo extends StatefulWidget {
  const SwipeDemo({super.key});
  @override
  State<SwipeDemo> createState() => _SwipeDemoState();
}
class _SwipeDemoState extends State<SwipeDemo> {
  
  List<String> items = List.generate(20, (index) => "Bird ${index + 1}");

  void showInfo(dir,item,index){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text(
              dir == DismissDirection.startToEnd ?
              '$item is Deleted' : '$item is Liked'
          ),
        action: SnackBarAction(
          label: 'UNDO',
          onPressed: ()=> setState(() {
            items.insert(index, item);
          }),
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          String currentItem = items[index];
          return Dismissible(
              key: Key(currentItem),
              onDismissed: (dir){
                  showInfo(dir, currentItem, index);
                  setState(() {
                    items.removeAt(index);
                  });
              },
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerLeft,
                child: const Icon(Icons.delete),
              ),
              secondaryBackground: Container(
                color: Colors.green,
                alignment: Alignment.centerRight,
                child: const Icon(Icons.thumb_up),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/bird.jpeg'),
                    title: Text(currentItem),
                  ),
                ),
              )
          );
        }
    );
  }
}
