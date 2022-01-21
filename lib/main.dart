import 'package:flutter/material.dart';
import 'package:nav/explore_screen.dart';
import 'package:nav/home_screen.dart';
import 'package:nav/nav_bar.dart';
import 'package:nav/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: BottomNaviBar.id,
      routes: {
        HomeScreen.id : (context) => const HomeScreen(),
        ExploreScreen.id : (context) => const ExploreScreen(),
        ProfileScreen.id : (context) => const ProfileScreen(),
        BottomNaviBar.id : (context) => BottomNaviBar(menuScreenContext: context),
      },
    );
  }
}
