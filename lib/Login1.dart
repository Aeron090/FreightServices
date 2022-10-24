import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freight_services/confirmpassword.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginemail extends StatefulWidget {
  const Loginemail({super.key});

  @override
  State<Loginemail> createState() => _LoginemailState();
}

class _LoginemailState extends State<Loginemail> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              height: 105.h,
              width: 236.w,
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100.h,
                      ),
                      Container(
                        // width: 368,
                        height: 70,
                        child: SizedBox(
                          // height: 70.h,
                          // width: 368.w,
                          child: TextField(
                            textAlign: TextAlign.start,
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
                              hintText: 'Enter your mail',
                              hintStyle: TextStyle(fontSize: 16.sp),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.r),
                                borderSide: BorderSide(
                                  color: Color(0xffD1D1D1),
                                  width: 2.w,
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
                      GestureDetector(
                        onTap: () {
                          Get.to(() => ConfirmPassword());
                        },
                        child: Container(
                          // width: 368.w,
                          height: 70.h,
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
                          child: Center(
                            child: Text(
                              "Send",
                              style: TextStyle(
                                  fontSize: 18.sp, color: Color(0xffFFFFFF)),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
