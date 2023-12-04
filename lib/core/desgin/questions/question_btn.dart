import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionBTNScreen extends StatelessWidget {
  final VoidCallback onPrees;
  // final Color btnColor ;
  // final Color borderColor ;
  // final Color iconColor ;
  // final Color textColor ;

   QuestionBTNScreen({Key? key, required this.onPrees,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPrees,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        margin: EdgeInsets.only(left: 230),
        height: 44.h,
        width: 124.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color:Color(0xffEFEFEF),
            border: Border.all(
              color: Color(0xffDCDCDC),
            )),
        child: Row(
          children: [
            Icon(
              Icons.arrow_forward,
              size: 14,
              color: Color(0xffDCDCDC),
            ),
            SizedBox(
              width: 4.w,
            ),
            Text(
              "Continue",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,color: Color(0xffDCDCDC),),
            )
          ],
        ),
      ),
    );
  }
}
