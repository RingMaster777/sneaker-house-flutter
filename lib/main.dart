import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_house_app/models/cart.dart';
import 'package:sneaker_house_app/pages/cart_page.dart';
import 'package:sneaker_house_app/pages/home_page.dart';
import 'package:sneaker_house_app/pages/intro_page.dart';
import 'package:sneaker_house_app/pages/shop_page.dart';
import 'package:sneaker_house_app/themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder:
          (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: IntroPage(),
            theme: lightMode,
            routes: {
              "/intro_page": (context) => const IntroPage(),
              "/home_page": (context) => const HomePage(),
              "/shop_page": (context) => const ShopPage(),
              "/cart_page": (context) => const CartPage(),
            },
          ),
    );
  }
}
