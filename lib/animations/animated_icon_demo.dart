import 'package:flutter/material.dart';
const icons = <String,AnimatedIconData>{
  'add_event' : AnimatedIcons.add_event,
  'arrow_menu' : AnimatedIcons.arrow_menu,
  'close_menu' : AnimatedIcons.close_menu,
  'ellipsis_search' : AnimatedIcons.ellipsis_search,
  'pause_play' : AnimatedIcons.pause_play,
  'list_view' : AnimatedIcons.list_view
};
class AnimatedIconDemo extends StatelessWidget {
  const AnimatedIconDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for(final kv in icons.entries)
          Padding(
              padding: const EdgeInsets.all(8),
            child: AnimatedIconBox(name: kv.key,icon: kv.value),
          )
      ],
    );
  }
}

class AnimatedIconBox extends StatefulWidget {
  const AnimatedIconBox({super.key,required this.name,required this.icon});
  final String name;
  final AnimatedIconData icon;
  @override
  State<AnimatedIconBox> createState() => _AnimatedIconBoxState();
}

class _AnimatedIconBoxState extends State<AnimatedIconBox>
  with SingleTickerProviderStateMixin{
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500)
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: ()=> animationController.isCompleted ?
          animationController.reverse() : animationController.forward(),
            child: AnimatedIcon(
                icon: widget.icon,
                progress: animationController,
                size: 128
            )
        )
      ],
    );
  }
}

