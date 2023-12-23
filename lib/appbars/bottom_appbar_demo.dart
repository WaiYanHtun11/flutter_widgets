import 'package:flutter/material.dart';
class BottomAppBarDemo extends StatelessWidget {
  const BottomAppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        mini: true, // small button
        onPressed: (){},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.deepOrange,
        child: Row(
          children: [
            IconButton(
                onPressed: ()=> showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                      height: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/bird.jpeg'),
                          fit: BoxFit.cover
                        )
                      ),
                      child: const SizedBox(
                        width: double.infinity,
                        child: Text('Bottom Sheet'),
                      ),
                    )
                ),
                icon: const Icon(Icons.menu)
            ),
            const Text('Click Menu Icon To See Bottom Sheet'),
          ],
        ),
      ),
    );
  }
}
