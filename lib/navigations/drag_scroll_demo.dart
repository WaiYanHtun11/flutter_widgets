import 'package:flutter/material.dart';
class DraggableScrollableSheetDemo extends StatelessWidget {
  const DraggableScrollableSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Container(color: Colors.red),
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.2,
              minChildSize: 0.2,
              maxChildSize: 0.8,
              builder: (context,controller){
                return Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(10))
                  ),
                  child: Scrollbar(
                    controller: controller,
                    child: ListView.builder(
                      itemCount: 20,
                        itemBuilder: (context,index){
                          return ListTile(
                            leading: const Icon(Icons.ac_unit),
                            title: Text('Item $index'),
                          );
                        }
                    ),
                  ),
                );
              }
          )
        ],
      ),
    );
  }
}
