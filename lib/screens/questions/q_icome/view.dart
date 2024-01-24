import 'package:cashkit/core/desgin/questions/question_btn.dart';
import 'package:cashkit/core/desgin/questions/questions_prog.dart';
import 'package:cashkit/screens/questions/q_four/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IncomeQuestionScreen extends StatefulWidget {
  const IncomeQuestionScreen({Key? key}) : super(key: key);

  @override
  State<IncomeQuestionScreen> createState() => _IncomeQuestionScreenState();
}

class _IncomeQuestionScreenState extends State<IncomeQuestionScreen> {
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
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => QuestionFourScreen(),
                //     ));
              },
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuestionFourScreen(),
                        ));
                  },
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
            height: 32.h,
          ),

          SizedBox(
            height: 80.h,
          ),

          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 96.h,
            width: 396.w,
            padding: EdgeInsets.symmetric(vertical: 27.w, horizontal: 12.h),
            margin: EdgeInsets.symmetric(vertical: 16.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Container(
              color: Colors.white,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Spacer(),
                  Text(
                    "EGP",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: SizedBox(
                      height: 40.h,
                      width: 66.w,
                      child: TextFormField(
                        // maxLength: 4,

                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                        keyboardType: TextInputType.number,

                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(8)),
                          hintText: "000",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 66.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                            ),
                            color: Colors.white),
                        child: Center(
                            child: Text(
                          "Week",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.grey),
                        )),
                      ),
                      Container(
                        width: 66.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            color: Colors.white),
                        child: Center(
                            child: Text(
                          "Month",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.grey),
                        )),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
