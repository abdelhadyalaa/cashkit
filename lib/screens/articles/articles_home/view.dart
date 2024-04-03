import 'package:cashkit/screens/articles/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticlesHomeScreen extends StatelessWidget {
  const ArticlesHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = [
      "assets/images/articles_image.png",
      "assets/images/articles_image2.png",
      "assets/images/articles_image3.png",
      "assets/images/articles_image4.png",
      "assets/images/articles_image5.png",
    ];
    List upTitle = [
      "Learn how to ",
      "Reduce your",
      "7 tips for spending",
      "The 50/30/20 ",
      "10 best investments ",
    ];
    List downTitle = [
      "Budget",
      "Expenses",
      "money",
      "Budget Rule",
      "in 2023",
    ];
    return Scaffold(
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          // physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ArticlesScreen(),));
            },
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      height: 140.h,
                      width: 116,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            images[index],
                            width: 86.w,
                            height: 86.h,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            height: 54.h,
                            width: 116.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  upTitle[index],
                                  style: TextStyle(
                                      fontSize: 10, fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  downTitle[index],
                                  style: TextStyle(
                                      fontSize: 10, fontWeight: FontWeight.w500),
                                ),
                                Text("Reed",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline)),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
          ),
          itemCount: images.length),
    );
  }
}
