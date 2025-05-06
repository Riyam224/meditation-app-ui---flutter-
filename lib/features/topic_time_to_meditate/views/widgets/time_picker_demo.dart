import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimePickerUIOnly extends StatelessWidget {
  const TimePickerUIOnly({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey6, // Optional background color
      body: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: 250,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.time,
            initialDateTime: DateTime(0, 0, 0, 11, 30),
            use24hFormat: false,
            onDateTimeChanged: (_) {},
          ),
        ),
      ),
    );
  }
}
