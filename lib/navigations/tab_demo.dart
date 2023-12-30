import 'package:flutter/material.dart';
class TabDemo extends StatelessWidget {
  const TabDemo({super.key});
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = const [
      Center(child: Icon(Icons.home,size: 64,color: Colors.teal)),
      Center(child: Icon(Icons.notifications,size: 64,color: Colors.cyan)),
      Center(child: Icon(Icons.account_circle,size: 64,color: Colors.blue)),
    ];
    List<Tab> tabs = const[
      Tab(icon: Icon(Icons.home),text: 'Home'),
      Tab(icon: Icon(Icons.notifications),text: 'Notification'),
      Tab(icon: Icon(Icons.account_circle),text: 'Profile'),
    ];
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              title: const Text('Tab Demo'),
            backgroundColor: Colors.cyan,
            bottom: TabBar(tabs: tabs),
          ),
          body: TabBarView(
            children: pages,
          ),
        )
    );
  }
}
