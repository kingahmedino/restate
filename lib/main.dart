import 'package:flutter/material.dart';
import 'package:restate/pages/home.dart';
import 'package:restate/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restate',
      theme: RestateTheme.lightTheme(),
      darkTheme: RestateTheme.darkTheme(),
      home: const HomePage(),
    );
  }
}
