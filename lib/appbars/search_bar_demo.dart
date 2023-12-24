import 'package:flutter/material.dart';
final List<String> colors = [
  'Red','Green','Blue','Yellow','Orange','Cyan','Grey','Brown','Purple','White','Pink'
];
class ColorCard extends StatelessWidget {
  const ColorCard({super.key,required this.color});
  final String color;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context) => Scaffold(
                  appBar: AppBar(title: const Text('Result Screen')),
                  body: Center(child: Text('You have selected $color Color')),
                )
            )
          );
        },
        leading: CircleAvatar(child: Text(color[0])),
        title: Text(color),
      ),
    );
  }
}
class SearchBarDemo extends StatefulWidget {
  const SearchBarDemo({super.key});

  @override
  State<SearchBarDemo> createState() => _SearchBarDemoState();
}
class _SearchBarDemoState extends State<SearchBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text('Search Bar Demo'),
        actions: [
          IconButton(
              onPressed: (){
                showSearch(
                    context: context,
                    delegate: ColorSearchDelicate()
                );
              },
              icon: const Icon(Icons.search_outlined)
          )
        ],
      ),
      body: ListView.builder(
        itemCount: colors.length,
          padding: const EdgeInsets.all(8),
          itemBuilder: (context,index){
            return ColorCard(color: colors[index]);
          }
      ),
    );
  }
}

class ColorSearchDelicate extends SearchDelegate{

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    if(query.isNotEmpty){
      return [
        IconButton(
          onPressed: (){
            query = '';
            showSuggestions(context);
          },
          icon: const Icon(Icons.clear)
        )
      ];
    }

  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading

  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    List<String> results = colors.where((c) => c.startsWith(query)).toList();
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: results.length,
        itemBuilder: (context,index){
          return ColorCard(color: results[index]);
        }
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    List<String> results = colors.where((c) => c.startsWith(query)).toList();
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: results.length,
        itemBuilder: (context,index){
          return ColorCard(color: results[index]);
        }
    );
  }

}