// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DaysInCircle extends StatelessWidget {
  const DaysInCircle({
    super.key,
    required this.day,
    required this.color,
    required this.textColor,
  });
  final String day;
  final Color color;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: Center(
        child: Text(day, style: TextStyle(color: textColor, fontSize: 16)),
      ),
    );
  }
}
