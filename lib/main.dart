import 'package:flutter/material.dart';
import 'package:sr_somaz_web/config/theme.dart';
import 'package:sr_somaz_web/pages/home_page.dart';

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
      home: const HomePage(),
    );
  }
}
