import 'package:flutter/cupertino.dart';
import 'package:meditation_app/features/auth/views/auth_.dart';
import 'package:meditation_app/features/auth/views/sign_in_.dart';
import 'package:meditation_app/features/auth/views/sign_up_.dart';
import 'package:meditation_app/features/home/views/home..dart';
import 'package:meditation_app/features/welcome/views/welcome.dart';
import 'package:meditation_app/features/sleep/views/welcome_sleep.dart';

import '../../features/home/views/course_details.dart';
import '../../features/topic_time_to_meditate/views/time_to_meditate.dart';
import '../../features/topic_time_to_meditate/views/topics.dart';

Route onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/auth':
      return CupertinoPageRoute(builder: (_) => const Auth());
    case '/sign-in':
      return CupertinoPageRoute(builder: (_) => const SignIn());
    case '/sign-up':
      return CupertinoPageRoute(builder: (_) => const SignUp());
    case '/welcome':
      return CupertinoPageRoute(builder: (_) => const Welcome());

    case '/topics':
      return CupertinoPageRoute(builder: (_) => Topics());

    case '/time-to-meditate':
      return CupertinoPageRoute(builder: (_) => TimeToMeditate());
    case '/home':
      return CupertinoPageRoute(builder: (_) => Home());

    case '/course-details':
      return CupertinoPageRoute(builder: (_) => CourseDetails());

    case '/welcome-sleep':
    default:
      return CupertinoPageRoute(builder: (_) => const WelcomeSleep());
  }
}
