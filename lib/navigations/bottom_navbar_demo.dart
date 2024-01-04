import 'package:flutter/material.dart';
class BottomNavigationBarDemo extends StatefulWidget {
  const BottomNavigationBarDemo({super.key});

  @override
  State<BottomNavigationBarDemo> createState() => _BottomNavigationBarDemoState();
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int currentIndex = 0;
  List<Widget> pages = const [
    Center(child: Icon(Icons.home,size: 64,color: Colors.cyan)),
    Center(child: Icon(Icons.notifications,size: 64,color: Colors.orange)),
    Center(child: Icon(Icons.account_circle,size: 64,color: Colors.deepPurple)),
  ];
  List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Notifications'),
    BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        unselectedItemColor: Colors.blue,
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.shifting,
        currentIndex: currentIndex,
        onTap: (int? newIndex){
            setState(() {currentIndex = newIndex!;});
        },
      ),
    );
  }
}
