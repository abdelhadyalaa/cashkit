import 'package:cashkit/core/desgin/questions/question_btn.dart';
import 'package:cashkit/core/desgin/questions/questions_prog.dart';
import 'package:cashkit/screens/questions/q_five/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionFourScreen extends StatefulWidget {
  QuestionFourScreen({Key? key, }) : super(key: key);


  @override
  State<QuestionFourScreen> createState() => _QuestionFourScreenState();
}

class _QuestionFourScreenState extends State<QuestionFourScreen> {
  int? selectIndex;
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: QuestionBTNScreen(
              onPrees: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuestionFiveScreen(),
                    ));
              },
              isSelected: selectIndex != null,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 16.h, right: 16.h, top: 32.h),
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 30.sp,
                  )),
              QuestionProg(
                widthProg: 160,
              )
            ],
          ),
          SizedBox(
            height: 48,
          ),
          Text(
            textAlign: TextAlign.center,
            'What is your income over the week / month?',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Color(0xff292929)),
          ),
          SizedBox(
            height: 80.h,
          ),
          Container(
            height: 68.h,
            width: 232.w,
            margin: EdgeInsets.symmetric(horizontal: 98),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Center(
              child: TextFormField(
                controller: myController,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "EGP",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(

                onTap: () {},
                child: Container(

                  height: 44.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xffDCDCDC),
                      )),
                  child: Center(
                    child: Text(
                      "Weakly",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xffDCDCDC),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 44.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xffDCDCDC),
                      )),
                  child: Center(
                    child: Text(
                      "Monthly",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xffDCDCDC),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
