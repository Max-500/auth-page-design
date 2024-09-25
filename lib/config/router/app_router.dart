import 'package:flutter/material.dart';
import '../../presentation/screens/screens.dart';

class AppRoutes {
  static const auth = '/';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      auth: (context) => const AuthScreen(),
    };
  }
}
