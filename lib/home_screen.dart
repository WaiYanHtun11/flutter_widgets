import 'package:flutter/material.dart';
import 'package:flutter_widgets/preview.dart';
import 'package:flutter_widgets/widgets/text_demo.dart';
import 'package:flutter_widgets/widgets/textfield_demo.dart';
import 'package:flutter_widgets/widgets/textformfield_demo.dart';

import 'widgets/icon_demo.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {

    Widget buildSubMenuItem(index,title,ui,path){
      return ListTile(
        title: Text(title),
        leading: Text(index),
        onTap: ()=> Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) =>  PreviewScreen(
                  title: title,
                  ui: ui,
                  path: path
              )
          )
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        foregroundColor: Colors.white,
        title: const Text('Flutter Widgets Catalog'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: [
                  const ListTile(
                    title: Text('Widgets'),
                    leading: Icon(Icons.widgets),
                  ),
                  const Divider(color: Colors.white,height: 5),
                  ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    shrinkWrap: true,
                    children: [
                      buildSubMenuItem('1', 'Icon',const IconDemo(),'lib/widgets/icon_demo.dart'),
                      buildSubMenuItem('2', 'Text',const TextDemo(),'lib/widgets/text_demo.dart'),
                      buildSubMenuItem('3', 'TextField',const TextFieldDemo(),'lib/widgets/textfield_demo.dart'),
                      buildSubMenuItem('4', 'TextFormField',const TextFormFieldDemo(),'lib/widgets/textformfield_demo.dart'),
                      buildSubMenuItem('5', 'Image',const Placeholder(),''),
                      buildSubMenuItem('6', 'Card,Inkwell',const Placeholder(),''),
                      buildSubMenuItem('7', 'Gradient',const Placeholder(),''),
                      buildSubMenuItem('8', 'Dropdown Button',const Placeholder(),''),
                      buildSubMenuItem('9', 'Other Stateful Widgets',const Placeholder(),'')
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
