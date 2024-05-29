import 'package:cashkit/core/res/colors.dart';
import 'package:cashkit/screens/Fingerprint/view.dart';
import 'package:cashkit/screens/notifications/view.dart';
import 'package:cashkit/screens/profile/edit_questions/view.dart';
import 'package:cashkit/screens/profile/rosca_template/rosca_home/empty_rosca.dart';
import 'package:cashkit/screens/profile/rosca_template/rosca_home/view.dart';
import 'package:cashkit/screens/profile/rosca_template/rosca_month/month_one/view.dart';
import 'package:cashkit/screens/profile/rosca_template/rosca_month/month_three/view.dart';
import 'package:cashkit/screens/profile/rosca_template/rosca_month/month_two/view.dart';
import 'package:cashkit/screens/questions/q_one/view.dart';
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
              NotificationsScreen(),
              // EmptyRoscaScreen(),
              // EditAllQuestionScreen(),
              // NotificationsScreen(),
              // FingerPrintScreen(),
              // QuestionOneScreen(),
              // RoscaHomeScreen(),
              // EmptyRoscaScreen(),
              // RoscaMonthOneScreen(),
              // RoscaMonthTwoScreen(),
              // RoscaMonthThreeScreen(),
            ],
          ),
        );
      },
    );
  }
}
