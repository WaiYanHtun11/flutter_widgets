import 'package:flutter/material.dart';
class DropDownButtonDemo extends StatefulWidget {
  const DropDownButtonDemo({super.key});
  @override
  State<DropDownButtonDemo> createState() => _DropDownButtonDemoState();
}
class _DropDownButtonDemoState extends State<DropDownButtonDemo> {
  String optionOne = 'green';
  String? optionTwo;
  String? optionThree;
  @override
  Widget build(BuildContext context) {
    var menuItems = ['red','green','blue','yellow','orange'];
    var dropdownMenuItems = menuItems.map((item){
      return DropdownMenuItem(
          value: item,
          child: Text(item)
      );
    }).toList();
    var popupMenuItems = menuItems.map((item){
        return PopupMenuItem(
          value: item,
            child: Text(item)
        );
    }).toList();
    return ListView(
      children: [
        ListTile(
          title: const Text('Dropdown Button with default'),
          subtitle: Text('Selected Value: $optionOne'),
          trailing: DropdownButton(
            value: optionOne,
            onChanged: (String? newValue){
              setState(() {
                optionOne = newValue!;
              });
            },
            items: dropdownMenuItems,
          ),
        ),
        ListTile(
          title: const Text('Dropdown Button with hint'),
          subtitle: Text('Selected Value: $optionTwo'),
          trailing: DropdownButton(
            value: optionTwo,
            hint: const Text('Choose'),
            onChanged: (String? newValue){
              setState(() {
                optionTwo = newValue!;
              });
            },
            items: dropdownMenuItems,
          ),
        ),
        ListTile(
          title: const Text('Popup Menu Button'),
          subtitle: Text('Selected Value: $optionThree'),
          trailing: PopupMenuButton(
            onSelected: (String? newValue){
              setState(() {
                optionThree = newValue;
              });
            },
            itemBuilder: (context) => popupMenuItems,
          )
        ),
      ],
    );
  }
}
