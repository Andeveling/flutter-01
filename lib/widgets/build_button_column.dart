import 'package:flutter/material.dart';

Column buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: const TextStyle(
                fontSize: 12,
                fontFamily: AutofillHints.addressCity,
                fontWeight: FontWeight.w400),
          ),
        )
      ]);
}
