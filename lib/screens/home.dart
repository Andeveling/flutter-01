import 'package:flutter/material.dart';

import '../widgets/buttons_row_section.dart';
import '../widgets/text_section.dart';
import '../widgets/title_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          const TextSection(),
        ],
      ),
    );
  }
}
