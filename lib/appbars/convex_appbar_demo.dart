import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
class ConvexAppBarDemo extends StatefulWidget {
  const ConvexAppBarDemo({super.key});
  @override
  State<ConvexAppBarDemo> createState() => _ConvexAppBarDemoState();
}
class _ConvexAppBarDemoState extends State<ConvexAppBarDemo> {
  int index = 0;
  var icons = [Icons.home,Icons.map,Icons.add,Icons.message,Icons.people];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Icon(icons[index],size: 128,color: Colors.deepOrange,)),
        bottomNavigationBar: ConvexAppBar(
          style: TabStyle.textIn,
          items: const [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.map, title: 'Discovery'),
            TabItem(icon: Icons.add, title: 'Add'),
            TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          onTap: (int newIndex) => setState(()=> index = newIndex),
        )
    );
  }
}
