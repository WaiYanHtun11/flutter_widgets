import 'package:flutter/material.dart';
class StatefulWidgetsDemo extends StatefulWidget {
  const StatefulWidgetsDemo({super.key});

  @override
  State<StatefulWidgetsDemo> createState() => _StatefulWidgetsDemoState();
}

class _StatefulWidgetsDemoState extends State<StatefulWidgetsDemo> {
  bool switchVal = false;
  bool checkBoxVal = false;
  double sliderOneValue = 0.5;
  double sliderTwoValue = 60.0;
  String selectedColor = 'red';
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: const Text('Switch'),
          trailing: Switch(
            onChanged: (bool newValue){
              setState(() {
                switchVal = newValue;
              });
            },
            value: switchVal,
          ),
        ),
        const ListTile(
          title: Text('Disabled Switch'),
          trailing: Switch(
            onChanged: null,
            value: true,
          ),
        ),
        ListTile(
          title: const Text('Checkbox'),
          trailing: Checkbox(
            onChanged: (bool? newValue){
              setState(() {
                checkBoxVal = newValue!;
              });
            },
            value: checkBoxVal,
          ),
        ),
        const ListTile(
          title: Text('Disabled Checkbox'),
          trailing: Checkbox(
            onChanged: null,
            value: false,
          ),
        ),
        ListTile(
          title: const Text('Slider'),
          subtitle: Slider(
            onChanged: (double newValue)=> setState(()=> sliderOneValue = newValue),
            value: sliderOneValue,
          ),
        ),
        ListTile(
          title: const Text('Slider with division & label'),
          subtitle: Slider(
            max: 100.0,
            divisions: 5,
            label: '${sliderTwoValue.round()}',
            onChanged: (double newValue)=> setState(()=> sliderTwoValue = newValue),
            value: sliderTwoValue,
          ),
        ),
        ListTile(
          title: const Text('Radio Buttons'),
          subtitle: ListView(
            shrinkWrap: true,
            children: ['red','green','blue','yellow'].map((item){
              return Card(
                color: selectedColor == item ? Colors.green.withOpacity(0.8) : Colors.white70,
                child: ListTile(
                  leading: Radio(
                    groupValue: selectedColor,
                    onChanged: (String? newColor)=> setState(()=> selectedColor = newColor!),
                    value: item,
                  ),
                  title: Text(item),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
