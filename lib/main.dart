import 'package:auth_project/pages/add_product_page.dart';
import 'package:auth_project/pages/auth_page.dart';
import 'package:auth_project/pages/edit_product_page.dart';
import 'package:auth_project/providers/auth.dart';
import 'package:auth_project/providers/products.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Auth(),
        ),
        ChangeNotifierProvider(
          create: (context) => Products(),
        ),
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const LoginPage(),
        routes: {
          AddProductPage.route: (ctx) => AddProductPage(),
          EditProductPage.route: (ctx) => EditProductPage(),
        },
      ),
    );
  }
}
