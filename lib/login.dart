import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freight_services/Login1.dart';
import 'package:freight_services/PrivacyPolicy.dart';
import 'package:freight_services/Splash_Screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          automaticallyImplyLeading: false,
          toolbarHeight: 80.h,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Login",
            style: TextStyle(fontSize: 18.sp),
          ),
          centerTitle: true,
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Center(
            child: Container(
              // height: 105.h,
              width: res_width * 0.6,
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100.h,
                    ),
                    Container(
                      // height: 70,
                      // width: 368,
                      child: SizedBox(
                        height: 70.h,
                        width: 368.w,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2.w,
                                color: Color(0xffF99C2C),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0.r),
                                borderSide: BorderSide(
                                    color: Color(0xffD1D1D1), width: 2.w)),
                            prefixIcon: Image(
                              image: AssetImage(
                                  "Assets/images/Icon material-email.png"),
                              color: Color(0xffF99C2C),
                            ),
                            hintText: 'arthur@domain.com',
                            hintStyle: TextStyle(fontSize: 16.sp),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.r),
                              borderSide: BorderSide(
                                width: 1.w,
                                style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            fillColor: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      // height: 70,
                      // width: 368,
                      child: SizedBox(
                        height: 70.h,
                        width: 368.w,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2.w,
                                  color: Color(0xffF99C2C),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6.0.r),
                                  borderSide: BorderSide(
                                      color: Color(0xffD1D1D1), width: 2.w)),
                              prefixIcon: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  child: Image(
                                      image: AssetImage(
                                          "Assets/images/Icon ionic-ios-lock.png")),
                                ),
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(fontSize: 16.sp),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.r),
                                borderSide: BorderSide(
                                  width: 1.w,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              fillColor: Color(0xffFFFFFF),
                              suffixIcon: Image.asset(
                                  "Assets/images/Icon ionic-ios-eye.png"),
                              suffixIconColor: Color(0xffA7A7A7)),
                        ),
                      ),
                    ),

                    // Container(
                    //   // height: 70,
                    //   // width: 368,
                    //   child: SizedBox(
                    //     height: 70.h,
                    //     width: 368.w,
                    //     child: TextField(
                    //       // textAlign: TextAlign.start,
                    //       keyboardType: TextInputType.text,
                    //       decoration: InputDecoration(
                    //           // contentPadding: EdgeInsets.symmetric(
                    //           //     vertical: 20, horizontal: 20),
                    //           focusedBorder: OutlineInputBorder(
                    //             borderSide: BorderSide(
                    //               width: 2.w,
                    //               color: Color(0xffF99C2C),
                    //             ),
                    //           ),
                    //           enabledBorder: OutlineInputBorder(
                    //               borderRadius: BorderRadius.circular(10.0.r),
                    //               borderSide: BorderSide(
                    //                   color: Color(0xffD1D1D1), width: 2.w)),
                    //           prefixIcon: Padding(
                    //             padding: const EdgeInsets.only(left: 10),
                    //             child: Image(
                    //                 image: AssetImage(
                    //                     "Assets/images/Icon ionic-ios-lock.png")),
                    //           ),
                    //           hintText: 'Password',
                    //           hintStyle: TextStyle(fontSize: 16.sp),
                    //           border: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(5.r),
                    //             borderSide: BorderSide(
                    //                 width: 1.w,
                    //                 color: Color(0xffD1D1D1),
                    //                 style: BorderStyle.solid),
                    //           ),
                    //           filled: true,
                    //           fillColor: Color(0xffFFFFFF),
                    //           suffixIcon: Image.asset(
                    //               "Assets/images/Icon ionic-ios-eye.png"),
                    //           suffixIconColor: Color(0xffA7A7A7)),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 27),
                          child: GestureDetector(
                            onTap: (() {
                              Get.to(() => Loginemail());
                            }),
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    GestureDetector(
                      onTap: (() {
                        Get.to(() => PrivacyPolicy());
                      }),
                      child: Container(
                        // width: 368.w,
                        // height: 70.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(6.r),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xffFAA845), Color(0xffF98700)],
                          ),
                        ),
                        child: SizedBox(
                          height: 70.h,
                          width: 368.w,
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 18.sp, color: Color(0xffFFFFFF)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
