// ignore_for_file: file_names, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/CustomDrawer.dart';

class AddSkillScreen extends StatefulWidget {
  AddSkillScreen({Key? key}) : super(key: key);

  @override
  State<AddSkillScreen> createState() => _AddSkillScreenState();
}

class _AddSkillScreenState extends State<AddSkillScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Skill'),
        // automaticallyImplyLeading: false,
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Add Skill Screen'),
            MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text('Home Screen')),
          ],
        ),
      ),
    );
  }
}
