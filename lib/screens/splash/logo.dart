import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:cashkit/screens/Fingerprint/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({Key? key}) : super(key: key);

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => FingerPrintScreen()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInDown(
                duration: Duration(seconds: 3),
                child: Image.asset(
                  "assets/images/Logo.png",
                )),
            SizedBox(
              height: 18.h,
            ),
            ElasticInUp(
              duration: Duration(seconds: 3),
              child: FadeInUp(
                  duration: Duration(seconds: 3),
                  child: Text(
                    "Cash Kit",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).primaryColor),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
