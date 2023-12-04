import 'package:cashkit/core/desgin/questions/question_btn.dart';
import 'package:cashkit/core/desgin/questions/questions_Containet.dart';
import 'package:cashkit/core/desgin/questions/questions_prog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionTwoScreen extends StatelessWidget {
  const QuestionTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 16.h, right: 16.h, top: 32.h),
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 30.sp,
                  )),
              QuestionProg(
                widthProg: 80,
              )
            ],
          ),
          SizedBox(
            height: 48,
          ),
          Text(
            textAlign: TextAlign.center,
            'Tell us about your home',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Color(0xff292929)),
          ),
          SizedBox(
            height: 32.h,
          ),
          FieldNoPicScreen(
            text: "I rent",
          ),
          FieldNoPicScreen(
            text: "I own",
          ),
          FieldNoPicScreen(
            text: "Other",
          ),
          SizedBox(
            height: 225.h,
          ),
          QuestionBTNScreen(onPrees: () {  },),
        ],
      ),
    );
  }
}
