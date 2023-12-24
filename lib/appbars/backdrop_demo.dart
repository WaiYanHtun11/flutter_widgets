import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
class BackDropDemo extends StatelessWidget {
  const BackDropDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('BackDrop Demo'),
      ),
        headerHeight: 120,
        backLayer: Container(
          color: Colors.deepOrange,
            child: const Center(
                child: Text('Back Layer')
            )
        ),
        frontLayer: const Center(child: Text('Front Layer'),)
    );
  }
}
