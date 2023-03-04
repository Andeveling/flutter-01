import 'package:flutter/material.dart';
import 'package:layout_tutorial/screens/home.dart';
import 'package:layout_tutorial/screens/scroll.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      initialRoute: '/scroll',
      routes: {
        '/': (context) => const HomeScreen(),
        '/scroll': (context) => const ScrollScreen()
      },
    );
  }
}
