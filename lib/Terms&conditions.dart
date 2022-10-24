import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freight_services/PartnerPolicy.dart';

import 'package:get/get.dart';

import 'controller/bottomcontroller.dart';
import 'navBar.dart';

class Termsandconditions extends StatefulWidget {
  const Termsandconditions({super.key});

  @override
  State<Termsandconditions> createState() => _TermsandconditionsState();
}

class _TermsandconditionsState extends State<Termsandconditions> {
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
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              width: 20.w,
              height: 20.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "Assets/images/Iconly-Bold-Arrow - Left Square.png"),
                      scale: 0.9)),
            ),
          ),
          title: Text(
            "User Agreement",
            style: TextStyle(fontSize: 20.sp),
          ),
          centerTitle: true,
          actions: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(23.0),
                child: GestureDetector(
                  onTap: () {
                    // Get.to(() => Unassignedtask());
                    final bottomcontroller = Get.put(BottomController());
                    bottomcontroller.navBarChange(2);
                    Get.to(() => MainScreen());
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 60.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 368.w,
                  height: 502.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0.r),
                      ),
                      color: Color(0xffFFFFFF)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text("Terms & Condition",
                            style: TextStyle(
                                fontSize: 22.sp,
                                color: Color(0xffF98700),
                                fontWeight: FontWeight.bold)),
                      ),
                      // SizedBox(
                      //   height: 2,
                      // ),
                      Container(
                        width: 325.w,
                        height: 412.h,
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                          style: TextStyle(
                              height: 1.3.h,
                              fontSize: 16.sp,
                              color: Color(
                                0xffA2A2A2,
                              )),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 19.h,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => PartnerPolicy());
              },
              child: Container(
                width: 368.w,
                height: 70.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6.r),
                    ),
                    color: Color(0xff000000)),
                child: Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 18.sp, color: Color(0xffFFFFFF)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
