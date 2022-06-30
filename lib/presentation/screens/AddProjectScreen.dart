// ignore_for_file: file_names, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import '../widgets/CustomDrawer.dart';

class AddProjectScreen extends StatefulWidget {
  AddProjectScreen({Key? key}) : super(key: key);

  @override
  State<AddProjectScreen> createState() => _AddProjectScreenState();
}

class _AddProjectScreenState extends State<AddProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Project'),
        // automaticallyImplyLeading: false,
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Add Project Screen'),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, '/addSkill');
              },
              child: Text('Add Skill Screen'),
            )
          ],
        ),
      ),
    );
  }
}
