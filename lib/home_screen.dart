import 'package:flutter/material.dart';
import 'package:flutter_widgets/layouts/container_demo.dart';
import 'package:flutter_widgets/layouts/expanded_demo.dart';
import 'package:flutter_widgets/layouts/fractionally_sized_box_demo.dart';
import 'package:flutter_widgets/layouts/row_col_demo.dart';
import 'package:flutter_widgets/layouts/stack_demo.dart';
import 'package:flutter_widgets/layouts/wrap_demo.dart';
import 'package:flutter_widgets/lists/expansion_tile_demo.dart';
import 'package:flutter_widgets/lists/grid_view_demo.dart';
import 'package:flutter_widgets/lists/list_tile_demo.dart';
import 'package:flutter_widgets/lists/listview_demo.dart';
import 'package:flutter_widgets/lists/swipe_demo.dart';
import 'package:flutter_widgets/preview.dart';
import 'package:flutter_widgets/widgets/button_demo.dart';
import 'package:flutter_widgets/widgets/card_demo.dart';
import 'package:flutter_widgets/widgets/dropdown_button_demo.dart';
import 'package:flutter_widgets/widgets/gradient_demo.dart';
import 'package:flutter_widgets/widgets/image_demo.dart';
import 'package:flutter_widgets/widgets/stateful_widgets_demo.dart';
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
        hoverColor: Colors.transparent,
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

    Widget buildMenuItem(icon,title,subMenuItems){
        return Card(
          child: ExpansionTile(
            shape: Border.all(color: Colors.transparent),
            leading: Icon(icon),
            title: Text(title),
            children: subMenuItems,
          ),
        );
    }

    List<Widget> widgetItems =  [
      buildSubMenuItem('1', 'Icon',const IconDemo(),'lib/widgets/icon_demo.dart'),
      buildSubMenuItem('2', 'Text',const TextDemo(),'lib/widgets/text_demo.dart'),
      buildSubMenuItem('3', 'TextField',const TextFieldDemo(),'lib/widgets/textfield_demo.dart'),
      buildSubMenuItem('4', 'TextFormField',const TextFormFieldDemo(),'lib/widgets/textformfield_demo.dart'),
      buildSubMenuItem('5', 'Image',const ImageDemo(),'lib/widgets/image_demo.dart'),
      buildSubMenuItem('6', 'Card,Inkwell',const CardDemo(),'lib/widgets/card_demo.dart'),
      buildSubMenuItem('7', 'Gradient',const GradientDemo(),'lib/widgets/gradient_demo.dart'),
      buildSubMenuItem('8', 'Buttons', const ButtonDemo(), 'lib/widgets/button_demo.dart'),
      buildSubMenuItem('9', 'Dropdown Button',const DropDownButtonDemo(),'lib/widgets/dropdown_button_demo.dart'),
      buildSubMenuItem('10', 'Other Stateful Widgets',const StatefulWidgetsDemo(),'lib/widgets/stateful_widgets_demo.dart')
    ];
    List<Widget> layoutItems = [
        buildSubMenuItem('1', 'Container', const ContainerDemo(), 'lib/layouts/container_demo.dart'),
        buildSubMenuItem('2', 'Row & Column', const RowColumnDemo(), 'lib/layouts/row_col_demo.dart'),
        buildSubMenuItem('3', 'Wrap', const WrapDemo(), 'lib/layouts/wrap_demo.dart'),
        buildSubMenuItem('4', 'Fractionally Sized Box', const FractionallySizedBoxDemo(), 'lib/layouts/fractionally_sized_box_demo.dart'),
        buildSubMenuItem('5', 'Expanded Demo', const ExpandedDemo(), 'lib/layouts/expanded_demo.dart'),
        buildSubMenuItem('6', 'Stack Demo', const StackDemo(), 'lib/layouts/stack_demo.dart')
    ];
    List<Widget> listItems = [
      buildSubMenuItem('1', 'ListTile', const ListTileDemo(), 'lib/lists/list_tile_demo.dart'),
      buildSubMenuItem('2', 'ListView', const ListViewDemo(), 'lib/lists/listview_demo.dart'),
      buildSubMenuItem('3', 'GridView', const GridViewDemo(), 'lib/lists/grid_view_demo.dart'),
      buildSubMenuItem('4', 'Expansion Tile',const ExpansionTileDemo(), 'lib/lists/expansion_tile_demo.dart'),
      buildSubMenuItem('5', 'Swipe To Dismiss', const SwipeDemo(), 'lib/lists/swipe_demo.dart')
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        foregroundColor: Colors.white,
        title: const Text('Flutter Widgets Catalog'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              buildMenuItem(Icons.widgets, 'Widgets', widgetItems),
              buildMenuItem(Icons.dashboard, 'Layouts', layoutItems),
              buildMenuItem(Icons.list, 'Lists', listItems)
            ]
          ),
        ),
      ),
    );
  }
}
