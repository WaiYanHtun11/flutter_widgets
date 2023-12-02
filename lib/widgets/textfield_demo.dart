import 'package:flutter/material.dart';
class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  bool hidden = true;
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

  Widget buildMultilineTextField(){
    return const TextField(
      maxLines: 3,
      decoration: InputDecoration(
          labelText: 'Enter about your self',
          hintText: 'type something...',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          )
      ),
    );
  }

  Widget buildPasswordTextField(){
    return TextField(
      obscureText: hidden,
      decoration: InputDecoration(
          labelText: 'Enter Password',
          prefixIcon: const Icon(Icons.security),
          suffixIcon: IconButton(
              onPressed: ()=> setState(()=> hidden = !hidden),
              icon: Icon(
                  hidden ? Icons.visibility : Icons.visibility_off,
                  color: hidden ? Colors.blue : Colors.deepOrange
              )
          ),
          border: const OutlineInputBorder()
      ),
    );
  }
  Widget buildBorderlessTextField(){
      return const TextField(
        decoration: InputDecoration.collapsed(hintText: 'type something...'),
      );
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const ListTile(title: Text('Number Input Field')),
        buildNumberTextField(),
        const ListTile(title: Text('Multiline Input Field')),
        buildMultilineTextField(),
        const ListTile(title: Text('Password Input Field')),
        buildPasswordTextField(),
        const ListTile(title: Text('Borderless Input Field')),
        buildBorderlessTextField()
      ],
    );
  }
}