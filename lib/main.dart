import 'package:flutter/material.dart';
import 'package:sr_somaz_web/config/theme.dart';
import 'package:sr_somaz_web/view/home_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SR Somaz',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      home: const HomePageView(),
    );
  }
}
