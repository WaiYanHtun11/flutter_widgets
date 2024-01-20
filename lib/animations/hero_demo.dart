import 'package:flutter/material.dart';
class HeroDemo extends StatelessWidget {
  const HeroDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
      child: ListTile(
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: const Text('Hero Animation'),
                    ),
                    body: Center(
                      child: Hero(
                        tag: 'demo',
                        child: Image.asset('assets/images/bird.jpeg'),
                      ),
                    ),
                  )
              )
            );
          },
          child: const Hero(
            tag: 'demo',
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/bird.jpeg'),
            ),
          ),
        ),
        title: const Text('This is hero demo...'),
      ),
    );
  }
}
