import 'package:animated_sign_up/pages/view/sign_up_page.dart';
import 'package:flutter/material.dart';

import 'constants/colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: BACKGROUND_COLOR,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Animated Sign Up',
      home: const SignUpPage(),
    );
  }
}
