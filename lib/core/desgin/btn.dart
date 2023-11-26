import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BTN extends StatelessWidget {
  final String text;
  final VoidCallback onPrees;

  BTN({
    Key? key,
    required this.text,
    required this.onPrees,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(

        onPressed: onPrees,
        child: Text(
          text,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700,color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity.w, 60.h),

          backgroundColor: Color(0xff047857),
            shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.circular(15.r),
        )),
      ),
    );
  }
}
