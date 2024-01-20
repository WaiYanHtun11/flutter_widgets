import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
class AnimationPackageDemo extends StatelessWidget {
  const AnimationPackageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          child: OpenContainer(
            closedBuilder: (ctx,action){
              return const ListTile(
                title: Text('Click To Open'),
                trailing: Icon(Icons.chevron_right),
              );
            },
            openBuilder: (ctx,action){
              return const Scaffold(
                body: Center(
                  child: Text('New Page'),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 300,
          child: PageTransitionSwitcherDemo(),
        ),
        const SizedBox(
          height: 300,
          child: SharedAxisDemo(),
        )
      ],
    );
  }
}

class PageTransitionSwitcherDemo extends StatefulWidget {
  const PageTransitionSwitcherDemo({super.key});

  @override
  State<PageTransitionSwitcherDemo> createState() => _PageTransitionSwitcherDemoState();
}
class _PageTransitionSwitcherDemoState extends State<PageTransitionSwitcherDemo> {
  final icons = const [
    Icon(Icons.looks_one,size: 48,key: ValueKey(1)),
    Icon(Icons.looks_two,size: 48,key: ValueKey(2))
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final btmNavBarItems = [
      BottomNavigationBarItem(icon: icons[0],label: 'Tab 1'),
      BottomNavigationBarItem(icon: icons[1],label: 'Tab 2')
    ];

    return Scaffold(
      body: Center(
        child: PageTransitionSwitcher(
          duration: const Duration(seconds: 1),
          transitionBuilder: (child,primaryAni,secondaryAni){
            return FadeThroughTransition(
                animation: primaryAni,
                secondaryAnimation: secondaryAni,
              child: child,
            );
          },
          child: icons[currentIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: btmNavBarItems,
        currentIndex: currentIndex,
        onTap: (newIndex)=> setState(()=> currentIndex = newIndex),
      ),
    );
  }
}


class SharedAxisDemo extends StatefulWidget {
  const SharedAxisDemo({super.key});

  @override
  State<SharedAxisDemo> createState() => _SharedAxisDemoState();
}
class _SharedAxisDemoState extends State<SharedAxisDemo> {
  final icons = const [
    Icon(Icons.looks_one,size: 64,key: ValueKey(1)),
    Icon(Icons.looks_two,size: 64,key: ValueKey(2)),
    Icon(Icons.looks_3,size: 64,key: ValueKey(3)),
  ];
  int currentIndex = 0;
  SharedAxisTransitionType transitionType =
      SharedAxisTransitionType.scaled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: PageTransitionSwitcher(
                duration: const Duration(seconds: 1),
                transitionBuilder: (child,primaryAni,secondaryAni){
                  return SharedAxisTransition(
                    animation: primaryAni,
                    secondaryAnimation: secondaryAni,
                    transitionType: transitionType,
                    child: child,
                  );
                },
                child: icons[currentIndex],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: currentIndex == 0 ? null : (){
                        setState(() => currentIndex-- );
                      },
                      child: const Text('BACK')
                  ),
                  ElevatedButton(
                      onPressed: currentIndex == 2 ? null : (){
                        setState(() => currentIndex++ );
                      },
                      child: const Text('NEXT')
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

