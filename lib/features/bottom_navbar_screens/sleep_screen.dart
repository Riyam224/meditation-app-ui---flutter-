import 'package:flutter/material.dart';
import 'package:meditation_app/features/sleep/views/welcome_sleep.dart';

class SleepScreen extends StatelessWidget {
  const SleepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: WelcomeSleep());
  }
}
