// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text('Vibhor Pal'),
            decoration: BoxDecoration(
              color: Colors.cyan,
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            title: Text('Add Project'),
            onTap: () {
              Navigator.pushNamed(context, '/addProject');
            },
          ),
          ListTile(
            title: Text('Add Skill'),
            onTap: () {
              Navigator.pushNamed(context, '/addSkill');
            },
          ),
        ],
      ),
    );
  }
}
