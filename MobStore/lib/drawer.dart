import 'package:app/screens/settings/settings.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
            child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
              ),
              child: Expanded(
                  child: Image(image: AssetImage('assets/images/logo1.jfif'))),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MySettings()));
              },
              title: Text('Settings'),
            ),
          ],
        ));
  }
}