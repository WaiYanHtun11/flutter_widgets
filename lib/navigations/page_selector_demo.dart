import 'package:flutter/material.dart';
class PageSelectorDemo extends StatelessWidget {
  const PageSelectorDemo({super.key});

  static const icons = [
    Icon(Icons.home),
    Icon(Icons.notifications),
    Icon(Icons.account_circle),
    Icon(Icons.settings),
    Icon(Icons.event)
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: icons.length,
        child: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const TabPageSelector(),
                const Expanded(
                    child: IconTheme(
                      data: IconThemeData(
                        size: 128,
                        color: Colors.green
                      ),
                      child: TabBarView(
                          children: icons
                      ),
                    )
                ),
                ElevatedButton(
                    onPressed: (){
                      final controller = DefaultTabController.of(context);
                      if(!controller.indexIsChanging){
                        controller.animateTo(4,duration: const Duration(milliseconds: 2000));
                      }
                    },
                    child: const Text('Skip')
                )
              ],
            ),
          ),
        )
    );
  }
}
