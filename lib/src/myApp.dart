// @dart=2.9

import 'package:flutter/material.dart';
import 'package:testproject/src/screens/mainScreen.dart';
import 'package:testproject/src/screens/tabsScreens/cartScreen.dart';
import 'package:testproject/src/screens/tabsScreens/favoriteScreen.dart';
import 'package:testproject/src/screens/tabsScreens/homeScreen.dart';
import 'package:testproject/src/screens/tabsScreens/newsScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test App',
      color: const Color(0xFFF1C116),
      home: MainScreen(),
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        FavoritesScreen.routeName: (_) => const FavoritesScreen(),
        NewsScreen.routeName: (_) => const NewsScreen(),
        CartScreen.routeName: (_) => const CartScreen(),
      },
    );
  }
}
