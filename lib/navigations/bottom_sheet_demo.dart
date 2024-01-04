import 'package:flutter/material.dart';
class BottomSheetDemo extends StatefulWidget {
  const BottomSheetDemo({super.key});

  @override
  State<BottomSheetDemo> createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {

  Widget buildBottomSheet(BuildContext context){
    return Container(
      color: Colors.white,
      height: 250,
      child: Column(
        children: [
          const ListTile(leading: Icon(Icons.photo),title: Text('Photo')),
          const ListTile(leading: Icon(Icons.music_note),title: Text('Music')),
          const ListTile(leading: Icon(Icons.video_camera_back_rounded),title: Text('Video')),
          TextButton(
              onPressed: ()=> Navigator.of(context).pop(),
              child: const Text('Close')
          )
        ],
      )
    );
  }
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  scaffoldKey.currentState?.
                  showBottomSheet((context) => buildBottomSheet(context));
                },
                child: const Text('Show Bottom Sheet')
            ),
            const SizedBox(height: 24),
            ElevatedButton(
                onPressed: (){
                  showModalBottomSheet(
                      context: context, 
                      builder: (context) => buildBottomSheet(context)
                  );
                },
                child: const Text('Show Modal Bottom Sheet')
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { },
        child: const Icon(Icons.add),
      ),
    );
  }
}
