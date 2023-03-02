import 'package:flutter/material.dart';
import 'package:flutter_storage/pages/settings.dart';

import '../pages/home.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final List<String> menuTitles = [
      'Home',
      'Settings',
      'Storage',
      'Sembast',
      'Password'
    ];

    List<Widget> menuItems = [];

    menuItems.add(const DrawerHeader(
        decoration: BoxDecoration(color: Colors.blueGrey),
        child: Text('Globo Fitness',
            style: TextStyle(color: Colors.white, fontSize: 28))));

    menuTitles.forEach((String element) {
      Widget screen = Container();
      menuItems.add(ListTile(
          title: Text(element, style: const TextStyle(fontSize: 18)),
          onTap: () {
            switch (element) {
              case 'Home':
                screen = const HomeScreen();
                break;
              case 'Settings':
                screen = const SettingsScreen();
                break;
              case 'Storage':
                screen = const HomeScreen();
                break;
              case 'Sembast':
                screen = const HomeScreen();
                break;
              case 'Password':
                screen = const HomeScreen();
                break;
            }
            Navigator.of(context)
                .pop(); //Remove the drawer from the stack (chiude il drawer)
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => screen));
          }));
    });
    return menuItems;
  }
}
