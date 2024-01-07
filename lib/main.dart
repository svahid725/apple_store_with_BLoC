import 'dart:ui';

import 'package:apple_store/constants/app_theme.dart';
import 'package:apple_store/constants/font_styles.dart';
import 'package:apple_store/screens/category_screen.dart';
import 'package:apple_store/screens/home_screen.dart';
import 'package:apple_store/screens/product_detail_screen.dart';
import 'package:apple_store/screens/product_list_screen.dart';
import 'package:apple_store/screens/profile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedBottomNavIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundScreenColor,
        body: IndexedStack(
          index: selectedBottomNavIndex,
          children: [ProductDetailScreen()],
          // children: getScreens(),
        ),
        bottomNavigationBar: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.transparent,
                elevation: 0,
                onTap: (value) => setState(() {
                  selectedBottomNavIndex = value;
                }),
                selectedLabelStyle: t10sb,
                currentIndex: selectedBottomNavIndex,
                unselectedLabelStyle: t10sb.apply(color: Colors.black),
                items: [

                  BottomNavigationBarItem(
                    activeIcon: Image.asset('assets/images/icon_profile_active.png'),
                    icon: Container(
                      margin: const EdgeInsets.only(bottom: 4),
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.blue,
                            blurRadius: 20,
                            spreadRadius: -7,
                            offset: Offset(0, 10))
                      ]),
                      child:
                          Image.asset('assets/images/icon_profile.png'),
                    ),
                    label: 'حساب کاربری',
                  ),


                  BottomNavigationBarItem(
                    activeIcon: Image.asset('assets/images/icon_basket_active.png'),
                    icon: Container(
                      margin: const EdgeInsets.only(bottom: 4),
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.blue,
                            blurRadius: 20,
                            spreadRadius: -7,
                            offset: Offset(0, 10))
                      ]),
                      child: Image.asset('assets/images/icon_basket.png'),
                    ),
                    label: 'سبد خرید',
                  ),


                  BottomNavigationBarItem(
                    activeIcon: Image.asset('assets/images/icon_category_active.png'),
                    icon: Container(
                      margin: const EdgeInsets.only(bottom: 4),
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.blue,
                            blurRadius: 20,
                            spreadRadius: -7,
                            offset: Offset(0, 10))
                      ]),
                      child: Image.asset('assets/images/icon_category.png'),
                    ),
                    label: 'دسته بندی',
                  ),


                  BottomNavigationBarItem(
                    activeIcon: Image.asset('assets/images/icon_home_active.png'),
                    icon: Container(
                      margin: const EdgeInsets.only(bottom: 4),
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.blue,
                            blurRadius: 20,
                            spreadRadius: -7,
                            offset: Offset(0, 10))
                      ]),
                      child: Image.asset('assets/images/icon_home.png'),
                    ),
                    label: 'خانه',
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  List<Widget> getScreens() {
    return <Widget> [
      const ProfileScreen(),
      const CategoryScreen(),
      const ProductListScreen(),
      const HomeScreen(),
    ];
  }
}
