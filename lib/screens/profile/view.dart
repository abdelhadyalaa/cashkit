import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = [
      "assets/images/quesicon.png",
      "assets/images/incomeicon.png",
      "assets/images/savingicon.png",
      "assets/images/expicon.png",
      "assets/images/goalcon.png",
      "assets/images/roscaicon.png",
      "assets/images/crediticon.png",
      "assets/images/premicon.png",
    ];
    List titles = [
      "Questions ",
      "Income",
      "Saving Box",
      "Expenses",
      "Goals",
      "ROSCA Template",
      "Credit Card",
      "Premium",
    ];
    List<Widget> pages = [
      //  here pages which navegetion


    ];
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          children: [
            SizedBox(
              height: 32.h,
            ),
            Text(
              "Profile Settings",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Theme.of(context).primaryColor),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(

              height: 80.h,
              width: double.infinity.w,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Center(
                child: ListTile(
                  leading: Image.asset("assets/images/profile_image.png"),
                  title: Text(
                    "Lena Adel",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    "lena123@gmail.com",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,)),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ...List.generate(
              titles.length,
                  (index) => Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                margin: EdgeInsets.only(bottom: 16),
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 64.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(

                      child: Row(
                        children: [
                          Image.asset(
                            images[index],
                            width: 20.w,
                            height: 20.h,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            titles[index],
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,size: 16,))

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}