import 'package:cashkit/screens/nav_bar/view.dart';
import 'package:cashkit/screens/profile/rosca_template/add_member/view.dart';
import 'package:cashkit/screens/profile/rosca_template/create_rosca/view.dart';
import 'package:cashkit/screens/profile/rosca_template/rosca_month/month_one/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoscaHomeScreen extends StatefulWidget {
  const RoscaHomeScreen({Key? key}) : super(key: key);

  @override
  State<RoscaHomeScreen> createState() => _RoscaHomeScreenState();
}

class _RoscaHomeScreenState extends State<RoscaHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffEFEFEF),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 80.0),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreatRosca(),
                  ),
                  (route) => true);
              // إجراء عند الضغط على الزر
            },
            child: Icon(Icons.add), // أيقونة الزر
            backgroundColor: Theme.of(context).primaryColor, // لون الخلفية
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xffEFEFEF),
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NavScreen(),
                  ),
                  (route) => false);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
          title: Text(
            "ROSCA",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              height: 210.h,
              width: double.infinity.w,

              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "ROSCA",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RoscaMonthOneScreen(),
                                ));
                          },
                          icon: Icon(Icons.arrow_forward_ios_rounded)),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "- ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      Text("3 Member"),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "- ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      Text("3 Months"),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "- ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      Text("EGP 1,000-Monthly "),
                      Spacer(),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              side: BorderSide(
                                  width: 2,
                                  color: Theme.of(context).primaryColor),
                              backgroundColor: Colors.white),
                          onPressed: () {},
                          child: Text(
                            "In process",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          ))
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Column(
                        children: [
                          Text("Start"),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text("7 june 2024",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                        ],
                      ),
                      Spacer(),
                      SizedBox(
                        width: 5,
                      ),
                      Spacer(),
                      Container(
                        width: 2,
                        height: 36,
                        color: Colors.grey,
                      ),
                      Spacer(),
                      SizedBox(
                        width: 5,
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text("End"),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text("7 Sep 2024",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                        ],
                      ),
                      Spacer(),
                      SizedBox(
                        width: 5,
                      ),
                      Spacer(),
                      Container(
                        width: 2,
                        height: 36,
                        color: Colors.grey,
                      ),
                      Spacer(),
                      SizedBox(
                        width: 5,
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text("Total"),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text("EGP 3,000",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ],
              ),
              // color: ,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              height: 210.h,
              width: double.infinity.w,

              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "ROSCA",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AddMemberScreen(),
                                ));
                          },
                          icon: Icon(Icons.arrow_forward_ios_rounded)),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "- ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      Text("5 Member"),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "- ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      Text("5 Months"),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "- ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      Text("EGP 2,000-Monthly "),
                      Spacer(),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              side: BorderSide(
                                  width: 2,
                                  color: Theme.of(context).primaryColor),
                              backgroundColor: Theme.of(context).primaryColor),
                          onPressed: () {},
                          child: Text(
                            "Completed",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Column(
                        children: [
                          Text("Start"),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text("1 jan 2024",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                        ],
                      ),
                      Spacer(),
                      SizedBox(
                        width: 5,
                      ),
                      Spacer(),
                      Container(
                        width: 2,
                        height: 36,
                        color: Colors.grey,
                      ),
                      Spacer(),
                      SizedBox(
                        width: 5,
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text("End"),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text("1 Jun 2024",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                        ],
                      ),
                      Spacer(),
                      SizedBox(
                        width: 5,
                      ),
                      Spacer(),
                      Container(
                        width: 2,
                        height: 36,
                        color: Colors.grey,
                      ),
                      Spacer(),
                      SizedBox(
                        width: 5,
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text("Total"),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text("EGP 10,000",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ],
              ),
              // color: ,
            ),
          ],
        ));
  }
}
