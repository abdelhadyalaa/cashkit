import 'package:cashkit/core/res/colors.dart';
import 'package:cashkit/screens/auth/login/view.dart';
import 'package:cashkit/screens/questions/q_four/view.dart';
import 'package:cashkit/screens/questions/q_icome/view.dart';
import 'package:cashkit/screens/questions/q_sex/view.dart';
import 'package:cashkit/screens/questions/q_three/view.dart';
import 'package:cashkit/screens/questions/q_two/view.dart';
import 'package:cashkit/screens/questions/saving/view.dart';
import 'package:cashkit/screens/questions/spend_money/view.dart';
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
              SavingScreen(),
              // QuestionSexScreen(),

              // QuestionFourScreen(),

              // IncomeQuestionScreen(),
              // QuestionThreeScreen(),
              // QuestionTwoScreen(),
              // QuestionOneScreen(),
            ],
          ),
        );
      },
    );
  }
}
