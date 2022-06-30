import 'package:flutter/material.dart';

import '../presentation/screens/AddProjectScreen.dart';
import '../presentation/screens/AddSkillsScreen.dart';
import '../presentation/screens/HomeScreen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case '/addProject':
        return MaterialPageRoute(
          builder: (context) => AddProjectScreen(),
        );
      case '/addSkill':
        return MaterialPageRoute(
          builder: (context) => AddSkillScreen(),
        );
      default:
        return null;
    }
  }
}
