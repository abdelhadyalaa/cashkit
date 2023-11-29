import 'package:cashkit/core/res/colors.dart';
import 'package:cashkit/screens/auth/pin_code/view.dart';
import 'package:flutter/material.dart';
import 'screens/auth/forget_password/view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {

        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: "Poppins",

            scaffoldBackgroundColor: Color(0xffEFEFEF),
            primaryColor:getMaterialColor(primaryColor.value) ,
            primarySwatch: getMaterialColor(primaryColor.value),
            useMaterial3: true,
          ),
          home: PinCodeScreen(),
        );
      },
    );
  }
}
