import 'package:flutter/material.dart';
import 'package:flutter_balcoder_firstapp/ui/home/home_page.dart';
import 'package:flutter_balcoder_firstapp/ui/user/user_page.dart';

class AppRoutes {
  static const home = '/';
  static const login = '/login';
  static const register = '/register';
  static const user = '/user';
  static const form = '/form';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (context) => const MyHomePage());
      case form:
        return MaterialPageRoute(builder: (context) => const UserPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}