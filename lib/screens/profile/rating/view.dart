import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Rating extends StatelessWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4), //color of shadow

                  spreadRadius: 1, //spread radius
                  blurRadius: 10, // blur radius
                  //changes position of shadow
                  //first paramerter of offset is left-right
                  //second parameter is top to down
                ),
                //you can set more BoxShadow() here
              ],
              color: Color(0xffEFEFEF),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35.0),
                topRight: Radius.circular(35.0),
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.90,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(

                            child: Text(" Send",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Color(0xff047857),
                                    fontWeight: FontWeight.w500)),
                          ),
                          Text("Write a Review",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Color(0xff292929),
                                  fontWeight: FontWeight.w600)),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(" Cancel",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Color(0xff047857),
                                    fontWeight: FontWeight.w500)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 80.w, top: 10.h, bottom: 10),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Color(0xffFFB400), size: 35),
                          SizedBox(
                            width: 3.w,
                          ),
                          Icon(Icons.star, color: Color(0xffFFB400), size: 35),
                          SizedBox(
                            width: 3.w,
                          ),
                          Icon(Icons.star, color: Color(0xffFFB400), size: 35),
                          SizedBox(
                            width: 3.w,
                          ),
                          Icon(Icons.star, color: Color(0xffFFB400), size: 35),
                          SizedBox(
                            width: 3.w,
                          ),
                          Icon(Icons.star, color: Color(0xff989898), size: 35),
                          SizedBox(
                            width: 3.w,
                          )
                        ],
                      ),
                    ),
                    Center(
                        child: Text("Tap a Star To Rate       ",
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: Color(0xff989898),
                                fontWeight: FontWeight.w400))),
                    SizedBox(height: 25.h),
                    Container(
                      color: Color(0xff989898).withOpacity(0.6),
                      width: MediaQuery.of(context).size.width.w,
                      height: 0.70.h,
                    ),
                    SizedBox(height: 18.h),
                    Padding(
                      padding: EdgeInsets.only(left: 9.0.w),
                      child: Text("Title",
                          style: TextStyle(
                              fontSize: 17.sp,
                              color: Color(0xff989898),
                              fontWeight: FontWeight.w400)),
                    ),
                    SizedBox(height: 16.h),
                    Container(
                      color: Color(0xff989898).withOpacity(0.2),
                      width: MediaQuery.of(context).size.width.w,
                      height: 0.70.h,
                    ),
                    SizedBox(height: 16.h),
                    Padding(
                      padding: EdgeInsets.only(left: 9.0.w),
                      child: Text("Review (Optional)",
                          style: TextStyle(
                              fontSize: 17.sp,
                              color: Color(0xff989898),
                              fontWeight: FontWeight.w400)),
                    )
                  ]),
            ),
          ),
        )
      ]),
    );
  }
}
