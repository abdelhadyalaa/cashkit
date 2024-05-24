import 'package:cashkit/core/res/colors.dart';
import 'package:cashkit/screens/Fingerprint/view.dart';
import 'package:cashkit/screens/articles/articles_home/view.dart';
import 'package:cashkit/screens/articles/view.dart';
import 'package:cashkit/screens/notifications/view.dart';
import 'package:cashkit/screens/profile/credit_card/addcard_view.dart';
import 'package:cashkit/screens/profile/credit_card/addmoney_view.dart';
import 'package:cashkit/screens/profile/credit_card/home_view.dart';
import 'package:cashkit/screens/profile/credit_card/yourcard.dart';
import 'package:cashkit/screens/profile/edit_profile/view.dart';
import 'package:cashkit/screens/profile/edit_questions/view.dart';
import 'package:cashkit/screens/profile/edit_savingbox/view.dart';
import 'package:cashkit/screens/profile/edite_income/view.dart';
import 'package:cashkit/screens/profile/rosca_template/add_member/view.dart';
import 'package:cashkit/screens/profile/rosca_template/create_rosca/view.dart';
import 'package:cashkit/screens/profile/rosca_template/rosca_home/view.dart';
import 'package:cashkit/screens/profile/view.dart';
import 'package:cashkit/screens/questions/q_five/view.dart';
import 'package:cashkit/screens/questions/q_four/view.dart';
import 'package:cashkit/screens/questions/q_one/view.dart';
import 'package:cashkit/screens/questions/saving/view.dart';
import 'package:cashkit/screens/splash/logo.dart';

import 'package:cashkit/test.dart';

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
              EditAllQuestionScreen(),
              // CreatRosca(),
              // NotificationsScreen(),
              // ProfileScreen(),
              // EditSavingBox(),
              // EditIncomeScreen(),
              // EditProfileScreen(),
              // AddCardScreen(),
              // AddMoneyScreen(),
              // EditQuestionOne(),
              // EditAllQuestionScreen(),
            ],
          ),
        );
      },
    );
  }
}
