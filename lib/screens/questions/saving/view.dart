import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavingScreen extends StatelessWidget {
  const SavingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/backq.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Saving Fund !",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  "Now you can save from your total budget",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                SizedBox(
                  height: 24.h,
                ),
                SizedBox(
                  height: 48.h,
                  width: 248.w,
                  child: TextFormField(
                    // maxLength: 4,

                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                    keyboardType: TextInputType.number,

                    decoration: InputDecoration(
                      labelText: "EGP",
                      labelStyle:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 56.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 53.0),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      textAlign: TextAlign.center,
                      "Do you want to carry on and make a saving box of your own?",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 48.h,),
                Row(
                  children: [
                    Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        fixedSize: Size(100.w, 48.h),),



                      onPressed: (){
                      showDialog(context: context, builder: (context) =>AlertDialog(
                        title: Image.asset(""),
                      ) ,);
                      }, child: Text("Save")),
                  Spacer(),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(

                        fixedSize: Size(100.w, 48.h),
                        side: BorderSide(color: Theme.of(context).primaryColor),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          backgroundColor: Colors.white


                      ),
                      onPressed: (){}, child: Text("Cancel",style: TextStyle(color: Theme.of(context).primaryColor),)),
                    Spacer(),
                ],)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
