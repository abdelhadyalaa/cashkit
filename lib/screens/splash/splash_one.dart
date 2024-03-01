import 'package:cashkit/core/desgin/btn.dart';
import 'package:cashkit/screens/splash/splash_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashOneScreen extends StatelessWidget {
  const SplashOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          Image.asset(
            "assets/images/Logo.png",
            width: 106.w,
            height: 78.h,
          ),
          SizedBox(
            height: 10.h,
          ),
          Image.asset(
            "assets/images/splashone.png",
            width: 365.w,
            height: 359.h,
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 30,
              ),
              Container(
                width: 12.w,
                height: 12.h,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(16)),
              ),
              Spacer(),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(16)),
              ),
              Spacer(),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(16)),
              ),
              Spacer(
                flex: 30,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SplashTwoScreen(),));
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity.w, 50.h),
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  )),
              child: Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity.w, 50.h),
                  side: BorderSide(color: Theme.of(context).primaryColor),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  )),
              child: Text(
                "Log In",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
