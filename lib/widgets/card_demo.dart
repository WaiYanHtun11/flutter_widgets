import 'package:flutter/material.dart';
class CardDemo extends StatelessWidget {
  const CardDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Card(
          color: Colors.orangeAccent,
          elevation: 30,
          child: SizedBox(
              height: 100,
            child: Center(
              child: Text('Card One'),
            ),
          ),
        ),
        Card(
          color: Colors.orangeAccent,
          elevation: 30,
          child: SizedBox(
            height: 100,
            child: InkWell(
              onTap: (){},
              splashColor: Colors.deepOrange,
              child: const Center(
                child: Text('Card Two(Inkwell Effect on Tap)'),
              ),
            ),
          ),
        ),
        const Card(
          color: Colors.orangeAccent,
          elevation: 30,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              bottomRight: Radius.elliptical(50, 200)
            )
          ),
          child: SizedBox(
            height: 100,
            child: Center(
              child: Text('Card Three (Custom Border Radius)'),
            ),
          ),
        ),
      ],
    );
  }
}
