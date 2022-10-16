import 'package:flutter/material.dart';
import 'package:grocery_store/screens/productdetails/product_details.dart';

import 'screens/onboarding/onboarding_screen.dart';

void main() {
  runApp(const GroceryApp());
}

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
      routes: {
        ProductDetails.routeName: (context) => const ProductDetails(),
      },
    );
  }
}
