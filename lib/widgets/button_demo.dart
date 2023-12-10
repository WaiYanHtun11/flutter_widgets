import 'package:flutter/material.dart';
class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    void showSnackBar({message}){
       ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(content: Text(message ?? "Button Clicked"),
             duration: const Duration(milliseconds: 500)
           )
       );
    }
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
                onPressed: showSnackBar,
                child: const Text('Elevated Button')
            ),
            const ElevatedButton(
                onPressed: null,
                child: Text('Disabled Elevated Button')
            )
          ],
        ),
        ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            OutlinedButton(
                onPressed: showSnackBar,
                child: const Text('Outlined Button')
            ),
            const OutlinedButton(
                onPressed: null,
                child: Text('Disabled Outlined Button')
            )
          ],
        ),
        ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: showSnackBar,
                child: const Text('Text Button')
            ),
            const TextButton(
                onPressed: null,
                child: Text('Disabled Text Button')
            )
          ],
        ),
        Center(
          child: IconButton(
            icon: const Icon(Icons.call),
            onPressed: showSnackBar,
            tooltip: 'Calling',
          ),
        )
      ],
    );
  }
}
