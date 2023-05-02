import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:shop_apps/providers/products.dart';
import 'package:shop_apps/screens/product_detail_screen.dart';
import 'package:shop_apps/screens/products_overview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>Products(),
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: const ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (context)=>const ProductDetailScreen(),
        },
      ),
    );
  }
}