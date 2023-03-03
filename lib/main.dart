import 'package:flutter/material.dart';
import 'package:layout_tutorial/widgets/buttons_row_section.dart';
import 'package:layout_tutorial/widgets/text_section.dart';
import 'package:layout_tutorial/widgets/title_section.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout Tutorial'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            const TitleSection(),
            const ButtonsRowSection(),
            const TextSection()
          ],
        ),
      ),
    );
  }
}
