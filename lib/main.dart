import 'package:flutter/material.dart';
import 'package:pfe/models/theme.dart';
import 'package:pfe/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      title: 'PFE PROJECT',
      home: Login(),
    );
  }
}

