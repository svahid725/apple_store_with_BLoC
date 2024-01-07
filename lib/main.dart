import 'package:apple_store/constants/font_styles.dart';
import 'package:apple_store/screens/home_screen.dart';
import 'package:apple_store/widgets/banner_slider.dart';
import 'package:apple_store/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'constants/app_theme.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: HomeScreen(),
    );
  }
}

