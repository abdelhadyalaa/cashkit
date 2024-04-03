import 'package:cashkit/core/res/colors.dart';
import 'package:cashkit/screens/articles/articles_home/view.dart';
import 'package:cashkit/screens/articles/view.dart';
import 'package:cashkit/screens/notifications/view.dart';
import 'package:cashkit/screens/profile/credit_card/addcard_view.dart';
import 'package:cashkit/screens/profile/credit_card/addmoney_view.dart';
import 'package:cashkit/screens/profile/credit_card/home_view.dart';
import 'package:cashkit/screens/profile/edit_profile/view.dart';
import 'package:cashkit/screens/profile/questions/view.dart';
import 'package:cashkit/screens/profile/view.dart';
import 'package:cashkit/screens/questions/q_one/view.dart';
import 'package:cashkit/screens/questions/saving/view.dart';
import 'package:cashkit/screens/splash/logo.dart';
import 'package:cashkit/screens/splash/splash_one.dart';
import 'package:cashkit/screens/splash/splash_three.dart';
import 'package:cashkit/screens/splash/splash_two.dart';

import 'package:flutter/material.dart';
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
            scaffoldBackgroundColor: const Color(0xffEFEFEF),
            primaryColor: getMaterialColor(primaryColor.value),
            primarySwatch: getMaterialColor(primaryColor.value),
          ),
          home: PageView(
            children: [
              // ArticlesHomeScreen(),
              ArticlesScreen(),
              // NotificationsScreen(),
              // AddMoneyScreen(),
              // AddCardScreen(),
              // CreditHomeScreen(),
              // EditQuestionScreen(),
              // EditProfileScreen(),
              // ProfileScreen(),
              // LogoScreen(),
              // SplashOneScreen(),
              // SplashTwoScreen(),
              // SplashThreeScreen(),
              // QuestionOneScreen(),

              // SavingScreen(),
              // LogoScreen(),
              // QuestionOneScreen(),
            ],
          ),
        );
      },
    );
  }
}
