import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class DialogDemo extends StatelessWidget {
  const DialogDemo({super.key});

  Widget buildItem(String title,Function action){
    return InkWell(
      onTap: ()=> action(),
      child: Card(
          child: ListTile(title: Text(title))
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    void showMessage(String message){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message))
        );
    }
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        buildItem('Alert Dialog', (){
          showDialog<String>(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Dialog Title'),
                content: const Text('This is dialog content'),
                actions: [
                  TextButton(
                      onPressed: ()=> Navigator.of(context).pop('NO'),
                      child: const Text('No')
                  ),
                  TextButton(
                      onPressed: ()=> Navigator.of(context).pop('YES'),
                      child: const Text('Yes')
                  ),
                ],
              )
          ).then((result) => showMessage(result!));
        }),
        buildItem('Simple Dialog', (){
          showDialog<String>(
              context: context,
              builder: (context)=> SimpleDialog(
                title: const Text('Simple Dialog'),
                children: [
                  ListTile(
                    leading: const Icon(Icons.account_circle),
                    title: const Text('user1@gmail.com'),
                    onTap: ()=> Navigator.of(context).pop('user1@gmail.com'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.account_circle),
                    title: const Text('user2@gmail.com'),
                    onTap: ()=> Navigator.of(context).pop('user2@gmail.com'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.add_circle),
                    title: const Text('Add Account'),
                    onTap: ()=> Navigator.of(context).pop('add new account'),
                  ),
                ],
              )
          ).then((result) => showMessage(result!));
        }),
        buildItem('Time Picker', (){
          final DateTime now = DateTime.now();
          showTimePicker(
              context: context, 
              initialTime: TimeOfDay(hour: now.hour, minute: now.minute)
          ).then((TimeOfDay? result) => showMessage(result!.format(context)));
        }),
        buildItem('Date Picker', (){
          showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2015),
              lastDate: DateTime(2025)
          ).then((DateTime? result){
              final String dateString = DateFormat.yMMMMd().format(result!);
              showMessage(dateString);
          });
        }),
        buildItem('Date Range Picker', (){
          showDateRangePicker(
              context: context,
              firstDate: DateTime(2023),
              lastDate: DateTime(2028)
          ).then((DateTimeRange? result){
            final String start = DateFormat.yMMMMd().format(result!.start);
            final String end = DateFormat.yMMMMd().format(result!.end);
            final String dateString = '$start - $end';
            showMessage(dateString);
          });
        })
      ],
    );
  }
}
