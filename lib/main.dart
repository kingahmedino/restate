import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:restate/pages/home.dart';
import 'package:restate/pages/location.dart';
import 'package:restate/pages/widgets.dart';
import 'package:restate/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 2;
  List<Widget> pages = [
    const LocationPage(),
    const Center(),
    const HomePage(),
    const Center(),
    const Center(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restate',
      theme: RestateTheme.lightTheme(),
      darkTheme: RestateTheme.darkTheme(),
      home: Scaffold(
        extendBody: true,
        body: pages[_currentIndex],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: BottomNavigationWidget(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ).animate().moveY(duration: 1.seconds, begin: 100, end: 0),
        ),
      ),
    );
  }
}
