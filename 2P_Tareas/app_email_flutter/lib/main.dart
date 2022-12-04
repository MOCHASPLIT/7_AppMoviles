import 'package:flutter/material.dart';
import 'screens/list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Email Flutter by WAGZ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListScreen(title: 'App Email Flutter by WAGZ'),
    );
  }
}
