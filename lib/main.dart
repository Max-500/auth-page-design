import 'package:flutter/material.dart';
import 'package:prueba/config/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login & Register Toggle',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.auth,
      routes: AppRoutes.getRoutes(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
