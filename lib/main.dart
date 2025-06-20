import 'package:flutter/material.dart';
import 'package:shop_phone1/Cat/cat.dart';
import 'package:shop_phone1/cart/cart.dart';
import 'package:shop_phone1/home/home.dart';
import 'package:shop_phone1/onborde/onborde1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      routes: {
        "home": (context) => Home(),
        "cat": (context) => Cat(),
        "cart": (context) => Cart(),
      },
      home: OnBorde1());
  }
}
