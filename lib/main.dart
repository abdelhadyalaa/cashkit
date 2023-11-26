import 'package:cashkit/core/res/colors.dart';
import 'package:flutter/material.dart';
import 'screens/auth/forget_password/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",

        scaffoldBackgroundColor: Color(0xffEFEFEF),
        primarySwatch: getMaterialColor(primaryColor.value),
        useMaterial3: true,
      ),
      home: forgetPasswordScreen(),
    );
  }
}
