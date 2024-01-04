import 'package:flutter/material.dart';
class BottomTabBarDemo extends StatefulWidget {
  const BottomTabBarDemo({super.key});

  @override
  State<BottomTabBarDemo> createState() => _BottomTabBarDemoState();
}

class _BottomTabBarDemoState extends State<BottomTabBarDemo>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  List<Widget> pages = const [
    Center(child: Icon(Icons.home,size: 64,color: Colors.cyan)),
    Center(child: Icon(Icons.notifications,size: 64,color: Colors.orange)),
    Center(child: Icon(Icons.account_circle,size: 64,color: Colors.deepPurple)),
  ];

  List<Tab> tabs = const [
    Tab(icon: Icon(Icons.home),text: 'Home'),
    Tab(icon: Icon(Icons.notifications),text: 'Notifications'),
    Tab(icon: Icon(Icons.account_circle),text: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: pages,
      ),
      bottomNavigationBar: Material(
        color: Colors.cyan,
        child: TabBar(
          tabs: tabs,
          controller: controller,
        ),
      ),
    );
  }
}
