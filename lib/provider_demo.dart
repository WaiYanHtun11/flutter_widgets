import 'package:flutter/material.dart';
import 'package:flutter_widgets/data_provider.dart';
import 'package:provider/provider.dart';
class ProviderDemo extends StatelessWidget {
  const ProviderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<DataProvider>(create: (context)=> DataProvider())
        ],
      child: Consumer<DataProvider>(
        builder: (context,data,child){
          return Scaffold(
            appBar: AppBar(title: const Text('Provider Demo')),
            body: Column(
              children: [
                Center(
                  child: Text('Sum: ${data.getTotal()}'),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
