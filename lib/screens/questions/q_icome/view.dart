import 'package:cashkit/core/desgin/questions/questions_prog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IncomeQuestionScreen extends StatelessWidget {
  const IncomeQuestionScreen({Key? key}) : super(key: key);

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
          Stack(
            children: [
              Container(
                height: 96,
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "000",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
              ),
              Positioned(
                left: 200,

                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 28.0),
                  child: Row(
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
                            color: Color(0xffEFEFEF)),
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
                            color: Color(0xffEFEFEF)),
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
                ),
              ),
            ],
          ),
          SizedBox(
            height: 120.h,
          ),
          Center(
            child: Row(
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
                      color: Color(0xffEFEFEF)),
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
                      color: Color(0xffEFEFEF)),
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
          )
        ],
      ),
    );
  }
}
