import 'package:flutter/material.dart';
class DrawerDemo extends StatelessWidget {
  const DrawerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildDrawerItem(icon,title){
      return Card(
        child: ListTile(leading: Icon(icon),title: Text(title)),
      );
    }
    return Scaffold(
      appBar: AppBar(title: const Text('Drawer Demo'),backgroundColor: Colors.orangeAccent),
      drawer: Drawer(
        child: ListView(
          children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                              image: AssetImage('assets/images/bird.jpeg')
                          )
                        ),
                      ),
                    ),
                  ),
                  accountName: const Text('Kyaw Kyaw'), 
                  accountEmail: const Text('kyawkyaw@gmail.com'),
                otherAccountsPictures: const [
                  CircleAvatar(child: Text('A')),
                  CircleAvatar(child: Text('B')),
                ],
              ),
              buildDrawerItem(Icons.person, 'Update Profile'),
              buildDrawerItem(Icons.password_rounded, 'Change Password'),
              buildDrawerItem(Icons.settings, 'Setting'),
          ],
        ),
      ),
    );
  }
}
