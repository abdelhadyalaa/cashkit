import 'package:cashkit/core/desgin/questions/question_btn.dart';
import 'package:cashkit/core/desgin/questions/questions_Containet.dart';
import 'package:cashkit/core/desgin/questions/questions_prog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionOneScreen extends StatefulWidget {
  QuestionOneScreen({Key? key}) : super(key: key);

  @override
  State<QuestionOneScreen> createState() => _QuestionOneScreenState();
}

class _QuestionOneScreenState extends State<QuestionOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),
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
                widthProg: 40,
              )
            ],
          ),
          SizedBox(
            height: 48,
          ),
          Text(
            textAlign: TextAlign.center,
            'Which of these do you spend money on ?',
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
              text: "Groceries",
              iconPath: "assets/images/emojione_shopping-cart.png",
            ),
          ),
          FieldChoseScreen(
            text: "Phones",
            iconPath: "assets/images/emojione_mobile-phone.png",
          ),
          FieldChoseScreen(
            text: "Personal Care",
            iconPath: "assets/images/pesonal_care.png",
          ),
          FieldChoseScreen(
            text: "Clothing",
            iconPath: "assets/images/clothing.png",
          ),
          FieldNoPicScreen(
            text: "Other",
          ),
          SizedBox(
            height: 80.h,
          ),
          QuestionBTNScreen(onPrees: () {  },),
        ],
      ),
    );
  }
}
