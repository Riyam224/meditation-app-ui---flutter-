import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/config/app_routes.dart';
import 'package:meditation_app/features/auth/views/auth_.dart';

void main() {
  runApp(const MeditationApp());
}

class MeditationApp extends StatelessWidget {
  const MeditationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',

          onGenerateRoute: onGenerateRoute,
          initialRoute: Auth.routeName,

          // You can use the library anywhere in the app even in theme
        );
      },
    );
  }
}

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int _selectedIndex = 0;

//   final lightTheme = ThemeData(
//     brightness: Brightness.light,
//     primaryColor: Colors.white,
//     scaffoldBackgroundColor: Colors.white,
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       backgroundColor: Colors.white,
//       selectedItemColor: Colors.deepPurple,
//       unselectedItemColor: Colors.grey,
//     ),
//   );

//   final darkTheme = ThemeData(
//     brightness: Brightness.dark,
//     primaryColor: Color(0xFF0D1B4C),
//     scaffoldBackgroundColor: Color(0xFF0D1B4C),
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       backgroundColor: Color(0xFF0D1B4C),
//       selectedItemColor: Colors.white,
//       unselectedItemColor: Colors.white60,
//     ),
//   );

//   List<Widget> pages = [
//     Center(child: Text("Home")),
//     Center(child: Text("Sleep", style: TextStyle(color: Colors.white))),
//     Center(child: Text("Meditate")),
//     Center(child: Text("Music")),
//     Center(child: Text("Afsar")),
//   ];

//   ThemeData get currentTheme => _selectedIndex == 1 ? darkTheme : lightTheme;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: currentTheme,
//       home: Scaffold(
//         body: pages[_selectedIndex],
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: _selectedIndex,
//           onTap: (index) => setState(() => _selectedIndex = index),
//           type: BottomNavigationBarType.fixed,
//           items: const [
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.nights_stay),
//               label: "Sleep",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.self_improvement),
//               label: "Meditate",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.music_note),
//               label: "Music",
//             ),
//             BottomNavigationBarItem(icon: Icon(Icons.person), label: "Afsar"),
//           ],
//         ),
//       ),
//     );
//   }
// }
