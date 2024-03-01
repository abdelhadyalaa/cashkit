import 'package:cashkit/core/desgin/btn.dart';
import 'package:cashkit/screens/splash/splash_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashTwoScreen extends StatelessWidget {
  const SplashTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Saved this month",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0,top: 11),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "EGP 900 ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),),
                  ),
                  Container(
                    width: 76.w,
                    height: 31.h,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Center(child: Text("+ 15%",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white),)),
                  )
                ],
              ),
            ),
            Image.asset(
              "assets/images/splash2.png",
              width: 396.w,
              height: 210.h,
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(textAlign: TextAlign.center,
              "Keep your savings grow every\n month",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
            SizedBox(
              height: 50.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(
                  flex: 30,
                ),
                Container(
                  width: 10.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(16)),
                ),
                Spacer(),
                Container(
                  width: 12,
                  height: 12,
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
                Spacer(
                  flex: 30,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SplashThreeScreen(),));

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
      ),
    );
  }
}
