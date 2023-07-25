import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Navigation Drawer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home), // Change this line to the desired icon
            title: Text('Home'),
            onTap: () {
              // Navigate to the home page
              Get.toNamed('/home');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings), // Change this line to the desired icon
            title: Text('Settings'),
            onTap: () {
              // Navigate to the settings page
              Get.toNamed('/settings');
            },
          ),
          // Add more list tiles for other navigation items
        ],
      ),
    );
  }
}
