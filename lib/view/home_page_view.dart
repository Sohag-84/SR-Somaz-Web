import 'package:flutter/material.dart';
import 'package:sr_somaz_web/config/responsive_layout.dart';
import 'package:sr_somaz_web/pages/mobile_home_page.dart';
import 'package:sr_somaz_web/pages/web_home_page.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: MobileHomePage(),
      web: WebHomePage(),
    );
  }
}
