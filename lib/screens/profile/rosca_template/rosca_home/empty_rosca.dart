import 'package:cashkit/screens/profile/rosca_template/create_rosca/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyRoscaScreen extends StatelessWidget {
  const EmptyRoscaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffEFEFEF),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 80.0),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreatRosca(),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xff047857).withOpacity(.3),
                    Color(0xffAFFE9C),
                  ]),
                  borderRadius: BorderRadius.circular(24.sp),
                  color: Theme.of(context).primaryColor),
              child: Center(child: Icon(Icons.add)),
            ),
            backgroundColor: Theme.of(context).primaryColor, // لون الخلفية
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xffEFEFEF),
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
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
        body: Center(
          child: Text(
            "No Roca Yet !",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ));
  }
}
