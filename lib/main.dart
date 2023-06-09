import 'package:coffe_shop_final/Model/Shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'HomePage.dart';

void main() {
  
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return ChangeNotifierProvider(create: (context) => CoffeShop(),
    builder: (context,child) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    ),
    );
  }
}