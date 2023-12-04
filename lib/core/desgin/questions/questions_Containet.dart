import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FieldChoseScreen extends StatelessWidget {
  final iconPath;
  final text;

  FieldChoseScreen({
    Key? key,
    this.iconPath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.only(left: 16, top: 16, bottom: 20),
      height: 60.h,
      width: 396.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xffEFEFEF),
          border: Border.all(
            color: Colors.grey,
          )),
      child: Row(
        children: [
          Image.asset(
            iconPath,
            width: 24,
            height: 24,
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}

class FieldNoPicScreen extends StatelessWidget {
  final text;

  FieldNoPicScreen({
    Key? key,
    required this.text,
  }) : super(key: key);

  Color color = Color(0xffEFEFEF);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.only(left: 16, top: 16, bottom: 20),
      height: 60.h,
      width: 396.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
          border: Border.all(
            color: Colors.grey,
          )),
      child: Row(
        children: [
          SizedBox(
            width: 21.w,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
