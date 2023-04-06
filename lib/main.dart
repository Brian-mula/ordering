import 'package:flutter/material.dart';
import 'package:ordering/views/homepage.dart';
import 'package:ordering/views/product_details.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        '/': (context) => const HomePage(),
        '/product_details': (context) => const ProductDetails(),
      },
    );
  }
}
