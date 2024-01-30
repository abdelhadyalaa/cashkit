import 'package:cashkit/core/desgin/questions/question_btn.dart';
import 'package:cashkit/core/desgin/questions/questions_prog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionFourScreen extends StatefulWidget {
  const QuestionFourScreen({Key? key}) : super(key: key);

  @override
  State<QuestionFourScreen> createState() => _QuestionFourScreenState();
}

class _QuestionFourScreenState extends State<QuestionFourScreen> {
  int? selectIndex;
  List images = [
    "assets/images/person.png",
    "assets/images/wedding-couple.png",
    "assets/images/divorce.png",
    "assets/images/funeral.png",
    "",
  ];
  List text = [
    "Single",
    "married",
    "Divorced",
    "Widowed",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: QuestionBTNScreen(
              onPrees: () {},
              isSelected: selectIndex != null,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
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
                widthProg: 180,
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
          ...List.generate(
            text.length,
                (index) => InkWell(
              onTap: () {
                selectIndex = index;
                setState(() {});
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 16),
                padding: EdgeInsets.only(left: 16, top: 16, bottom: 20),
                height: 60.h,
                width: 396.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color:
                    selectIndex == index ? Theme.of(context).primaryColor: Color(0xffEFEFEF),
                    border: Border.all(
                      color: Colors.grey,
                    )),
                child: Row(
                  children: [
                    images[index] != null && images[index].isNotEmpty
                        ? Image.asset(
                      images[index],
                      width: 24,
                      height: 24,
                    )
                        : SizedBox.shrink(),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      text[index],
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
