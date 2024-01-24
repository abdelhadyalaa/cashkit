import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavingScreen extends StatelessWidget {
  const SavingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Saving Fund !",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              "Now you can save from your total budget",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              height: 48.h,
              width: 248.w,
              child: TextFormField(
                // maxLength: 4,

                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  hintText: "Total Budget",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            SizedBox(height: 56.h,),
            Text("Do you want to carry on and make a saving box of your own?"),
          ],
        ),
      ),
    );
  }
}
