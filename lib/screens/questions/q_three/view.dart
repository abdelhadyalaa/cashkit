import 'package:cashkit/core/desgin/questions/question_btn.dart';
import 'package:cashkit/core/desgin/questions/questions_Containet.dart';
import 'package:cashkit/core/desgin/questions/questions_prog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionThreeScreen extends StatelessWidget {
  const QuestionThreeScreen({Key? key}) : super(key: key);

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
                widthProg: 120,
              )
            ],
          ),
          SizedBox(
            height: 48,
          ),
          Text(
            textAlign: TextAlign.center,
            'Do you currently have any debt?',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Color(0xff292929)),
          ),
          SizedBox(
            height: 32.h,
          ),
          GestureDetector(
            onTap: () {},
            child: FieldChoseScreen(
              text: "Credit Card",
              iconPath: "assets/images/credit.png",
            ),
          ),
          FieldChoseScreen(
            text: "House Loans",
            iconPath: "assets/images/house.png",
          ),
          FieldChoseScreen(
            text: "Personal Loans",
            iconPath: "assets/images/car.png",
          ),
          FieldNoPicScreen(
            text: "Other",
          ),
          SizedBox(
            height: 16.h,
          ),
          Center(
              child: Text(
            "I don’t currently have a debt",
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          )),
          SizedBox(
            height: 110.h,
          ),
          QuestionBTNScreen(
            onPrees: () {},
          ),
        ],
      ),
    );
  }
}
