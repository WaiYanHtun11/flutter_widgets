import 'package:flutter/material.dart';
class ReorderableListDemo extends StatefulWidget {
  const ReorderableListDemo({super.key});

  @override
  State<ReorderableListDemo> createState() => _ReorderableListDemoState();
}
class _ReorderableListDemoState extends State<ReorderableListDemo> {

  List<ListItem> items = ['A','B','C','D','E'].map((e){
    return ListItem(title: 'This is Item $e', checked: false);
  }).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reorderable List Demo')),
      body: ReorderableListView(
        buildDefaultDragHandles: true,
        onReorder: (int oldIndex, int newIndex) {
          print('OldIndex: $oldIndex | NewIndex: $newIndex');
          // 2 0
          // C A B D E
          setState(() {
              final newIdx = newIndex > oldIndex ? newIndex - 1 : newIndex; // 0
              final ListItem deletedItem = items.removeAt(oldIndex);
              items.insert(newIdx, deletedItem);
          });
        },
        children: items.map((item){
          return CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
              value: item.checked,
              key: Key(item.title),
              title: Text(item.title),
              subtitle: Text('Checked = ${item.checked}'),
              onChanged: (bool? newValue){
                setState(() {
                  item.checked = newValue!;
                });
              }
          );
        }).toList(),
      ),
    );
  }
}
class ListItem{
  String title;
  bool checked;
  ListItem({required this.title,required this.checked});
}