import 'package:flutter/material.dart';
import 'package:groceryapp/widgets/login.dart';
import 'package:groceryapp/widgets/number.dart';
import 'package:groceryapp/widgets/product_detail.dart';
import 'package:groceryapp/widgets/select_location.dart';
import 'package:groceryapp/widgets/sign_in.dart';
import 'package:groceryapp/widgets/sign_up.dart';

import 'widgets/Verification.dart';
import 'widgets/home_screen.dart';
import 'widgets/onboarding.dart';
import 'widgets/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductDetail(),
    );
  }
}
