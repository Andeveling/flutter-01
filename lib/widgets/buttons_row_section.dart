import 'package:flutter/material.dart';

import 'build_button_column.dart';

class ButtonsRowSection extends StatelessWidget {
  const ButtonsRowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButtonColumn(Colors.blue, Icons.call, 'CALL'),
        buildButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
        buildButtonColumn(Colors.blue, Icons.share, 'SHARE')
      ],
    );
  }
}
