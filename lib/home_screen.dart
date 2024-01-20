import 'package:flutter/material.dart';
import 'package:flutter_widgets/animations/hero_demo.dart';
import 'package:flutter_widgets/appbars/backdrop_demo.dart';
import 'package:flutter_widgets/appbars/basic_appbar_demo.dart';
import 'package:flutter_widgets/appbars/bottom_appbar_demo.dart';
import 'package:flutter_widgets/appbars/convex_appbar_demo.dart';
import 'package:flutter_widgets/appbars/search_bar_demo.dart';
import 'package:flutter_widgets/appbars/sliver_appbar_demo.dart';
import 'package:flutter_widgets/layouts/container_demo.dart';
import 'package:flutter_widgets/layouts/expanded_demo.dart';
import 'package:flutter_widgets/layouts/fractionally_sized_box_demo.dart';
import 'package:flutter_widgets/layouts/row_col_demo.dart';
import 'package:flutter_widgets/layouts/stack_demo.dart';
import 'package:flutter_widgets/layouts/wrap_demo.dart';
import 'package:flutter_widgets/lists/datatable_demo.dart';
import 'package:flutter_widgets/lists/expansion_tile_demo.dart';
import 'package:flutter_widgets/lists/grid_view_demo.dart';
import 'package:flutter_widgets/lists/list_tile_demo.dart';
import 'package:flutter_widgets/lists/listview_demo.dart';
import 'package:flutter_widgets/lists/reorderable_list_demo.dart';
import 'package:flutter_widgets/lists/swipe_demo.dart';
import 'package:flutter_widgets/navigations/bottom_navbar_demo.dart';
import 'package:flutter_widgets/navigations/bottom_sheet_demo.dart';
import 'package:flutter_widgets/navigations/bottom_tabbar_demo.dart';
import 'package:flutter_widgets/navigations/dialog_demo.dart';
import 'package:flutter_widgets/navigations/drag_scroll_demo.dart';
import 'package:flutter_widgets/navigations/drawer_demo.dart';
import 'package:flutter_widgets/navigations/page_selector_demo.dart';
import 'package:flutter_widgets/navigations/tab_demo.dart';
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
      buildSubMenuItem('5', 'Swipe To Dismiss', const SwipeDemo(), 'lib/lists/swipe_demo.dart'),
      buildSubMenuItem('6', 'Reorderable List',const ReorderableListDemo(), 'lib/lists/reorderable_list_demo.dart'),
      buildSubMenuItem('7', 'DataTable', const DataTableDemo(), 'lib/lists/datatable_demo.dart')
    ];

    List<Widget> appbarItems = [
      buildSubMenuItem('1', 'Basic AppBar',const BasicAppBarDemo(),'lib/appbars/basic_appbar_demo.dart'),
      buildSubMenuItem('2', 'Bottom AppBar & FAB', const BottomAppBarDemo(), 'lib/appbars/bottom_appbar_demo.dart'),
      buildSubMenuItem('3', 'Sliver App Bar', const SliverAppBarDemo(),'/lib/appbars/sliver_appbar_demo.dart'),
      buildSubMenuItem('4', 'Backdrop Demo', const BackDropDemo(), '/lib/appbars/backdrop_demo.dart'),
      buildSubMenuItem('5', 'Convex Appbar Demo', const ConvexAppBarDemo(), '/lib/appbars/convex_appbar_demo.dart'),
      buildSubMenuItem('6', 'Search Bar Demo', const SearchBarDemo(), '/lib/appbars/search_bar_demo.dart')
    ];

    List<Widget> navigationItems = [
      buildSubMenuItem('1', 'Tab Bar', const TabDemo(), '/lib/navigations/tab_demo.dart'),
      buildSubMenuItem('2', 'Dialogs', const DialogDemo(), 'lib/navigations/dialog_demo.dart'),
      buildSubMenuItem('3', 'Drawer', const DrawerDemo(), 'lib/navigations/drawer_demo.dart'),
      buildSubMenuItem('4', 'Bottom Sheet', const BottomSheetDemo(), 'lib/navigations/bottom_sheet_demo.dart'),
      buildSubMenuItem('5', 'Bottom Tab Bar', const BottomTabBarDemo(), 'lib/navigations/bottom_tabbar_demo.dart'),
      buildSubMenuItem('6', 'Bottom Nav Bar', const BottomNavigationBarDemo(),'lib/navigations/bottom_navbar_demo.dart'),
      buildSubMenuItem('7', 'Page Selector',const PageSelectorDemo(), 'lib/navigations/page_selector_demo.dart'),
      buildSubMenuItem('8', 'DraggableScrollableSheet', const DraggableScrollableSheetDemo(),'lib/navigations/drag_scroll_demo.dart')
    ];

    List<Widget> animationItems = [
      buildSubMenuItem('1', 'Hero',const HeroDemo(), 'lib/animations/hero_demo.dart')
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
              buildMenuItem(Icons.list, 'Lists', listItems),
              buildMenuItem(Icons.phone_android, 'AppBars', appbarItems),
              buildMenuItem(Icons.screen_share, 'Navigations', navigationItems),
              buildMenuItem(Icons.animation, 'Animations', animationItems)
            ]
          ),
        ),
      ),
    );
  }
}
