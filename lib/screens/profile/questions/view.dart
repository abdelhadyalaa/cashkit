import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditQuestionScreen extends StatelessWidget {
  const EditQuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String selectedValue = "USA";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffEFEFEF),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Questions ",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Which of these do you spend money on ?",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          DropdownButton(
            items: [],
            onChanged: (value) {},
          )
          // Container(
          //   margin: EdgeInsets.only(top: 12, bottom: 20),
          //   height: 48.h,
          //   width: double.infinity.w,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(8),
          //     color: Colors.white,
          //   ),
          //   // child: DropdownButton(
          //   //
          //   //   items: [
          //   //
          //   //   ],
          //   //   onChanged: (Object? value) {},
          //   // ),
          // )
        ],
      ),
    );
  }
}
