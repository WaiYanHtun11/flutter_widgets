import 'package:flutter/material.dart';
class TextFieldDemo extends StatelessWidget {
  const TextFieldDemo({super.key});

  Widget buildNumberTextField(){
    return const TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Enter your age',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.deepOrange,width: 10)
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const ListTile(title: Text('Number Input Field')),
        buildNumberTextField()
      ],
    );
  }
}
