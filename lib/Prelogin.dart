import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freight_services/login.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class prelogin extends StatefulWidget {
  const prelogin({super.key});

  @override
  State<prelogin> createState() => _preloginState();
}

class _preloginState extends State<prelogin> {
  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xffFAA845), Color(0xffF98700)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: 80,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Pre Login",
            style: TextStyle(fontSize: 18.sp),
          ),
          centerTitle: true,
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Center(
            child: Container(
              width: res_width * 0.6,
              // height: 105.h,
              // width: 236.w,
              child: Image.asset("Assets/images/logo.png"),
            ),
          ),
          SizedBox(
            height: 45.h,
          ),
          Expanded(
            child: Container(
              width: 428.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(65.r),
                    topRight: Radius.circular(65.r),
                  ),
                  color: Colors.white),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                  height: 100.h,
                ),
                GestureDetector(
                  onTap: (() {
                    Get.to(() => LoginScreen());
                  }),
                  child: Container(
                      width: 368.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.r),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xffFAA845), Color(0xffF98700)],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 15.h,
                            width: 18.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "Assets/images/Icon material-email.png",
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Login With Email",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  width: 368.w,
                  height: 70.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.h),
                    ),
                    color: Color(0xff4285F4),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 15.h,
                        width: 18.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "Assets/images/Icon awesome-facebook-f.png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Login With Facebook",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  width: 368.w,
                  height: 70.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.r),
                    ),
                    color: Color(0xffEA4335),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 15.h,
                        width: 18.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "Assets/images/Icon awesome-google.png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Login With Google",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  width: 368.w,
                  height: 70.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.r),
                    ),
                    color: Color(0xff000000),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 15.h,
                        width: 18.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "Assets/images/Icon awesome-apple.png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Login With Apple",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
