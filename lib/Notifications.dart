import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freight_services/Profile.dart';
import 'package:freight_services/Settings.dart';

import 'package:freight_services/navBar.dart';
import 'package:get/get.dart';

import 'controller/bottomcontroller.dart';

var selected;

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      child: Scaffold(
        // bottomNavigationBar: MainScreen(),
        // floatingActionButton: Padding(
        //   padding: const EdgeInsets.only(top: 30),
        //   child: Container(
        //       height: 78.h,
        //       width: 78.w,
        //       child: FloatingActionButton(
        //           backgroundColor: Colors.black,
        //           child: Padding(
        //             padding: const EdgeInsets.only(left: 8),
        //             child: Column(
        //               mainAxisAlignment: MainAxisAlignment.center,
        //               children: [
        //                 ImageIcon(
        //                   AssetImage("Assets/images/logo copy.png"),
        //                   size: 45,
        //                   color: Color(0xffF99C2C),
        //                 ),
        //               ],
        //             ),
        //           ),
        //           onPressed: () {})),
        // ),
        // floatingActionButtonLocation:
        //     FloatingActionButtonLocation.miniCenterDocked,
        appBar: AppBar(
            leading: GestureDetector(
              onTap: () {
                // Get.to(() => Unassignedtask());
                final bottomcontroller = Get.put(BottomController());
                bottomcontroller.navBarChange(0);
                Get.to(() => MainScreen());
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
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text("Notifications"),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.r),
                  bottomRight: Radius.circular(25.r),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xffFAA845), Color(0xffF98700)],
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 22),
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => Settings());
                  },
                  child: Container(
                    width: 23.w,
                    height: 23.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "Assets/images/Icon ionic-ios-settings.png",
                          ),
                          fit: BoxFit.contain,
                          scale: 5),
                    ),
                  ),
                ),
              ),
            ]),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 25.h,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      final bottomcontroller = Get.put(BottomController());
                      bottomcontroller.navBarChange(4);
                      Get.to(() => MainScreen());
                    },
                    child: Container(
                      width: 386.w,
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 17),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Martin Harvard",
                              style: TextStyle(
                                  fontSize: 18.sp, color: Color(0xffA2A2A2)),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 281.w,
                                  height: 46.h,
                                  child: Text(
                                    "Your Package is Picked up by tomorrow between 11am - 2pm",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Color(0xffC2C2C2)),
                                  ),
                                ),
                                SizedBox(width: 18.w),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 25),
                                  child: Container(
                                    width: 50.w,
                                    height: 17.h,
                                    child: Text("2m ago",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Color(0xffC2C2C2))),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                GestureDetector(
                  onTap: () {
                    final bottomcontroller = Get.put(BottomController());
                    bottomcontroller.navBarChange(4);
                    Get.to(() => MainScreen());
                  },
                  child: Container(
                    width: 386.w,
                    // height: 86.h,
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Martin Harvard",
                            style: TextStyle(
                                fontSize: 18.sp, color: Color(0xffA2A2A2)),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 281.w,
                                height: 46.h,
                                child: Text(
                                  "Your Package is Picked up by tomorrow between 11am - 2pm",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Color(0xffC2C2C2)),
                                ),
                              ),
                              SizedBox(width: 18.w),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 25),
                                child: Container(
                                  width: 50.w,
                                  height: 17.h,
                                  child: Text("2m ago",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: Color(0xffC2C2C2))),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                notifications(),
                notifications(),
                SizedBox(height: 12.h),
                notifications(),
                SizedBox(height: 12.h),
                notifications(),
                SizedBox(height: 12.h),
                notifications(),
                SizedBox(height: 12.h),
                notifications(),
                SizedBox(height: 12.h),
                notifications(),
                SizedBox(height: 12.h),
                notifications(),
                SizedBox(height: 12.h),
                notifications(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  notifications() {
    return Column(
      children: [
        Container(
          width: 386.w,
          // height: 86.h,
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Martin Harvard",
                  style: TextStyle(fontSize: 18.sp, color: Color(0xffA2A2A2)),
                ),
                Row(
                  children: [
                    Container(
                      width: 281.w,
                      height: 46.h,
                      child: Text(
                        "Your Package is Picked up by tomorrow between 11am - 2pm",
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 14.sp, color: Color(0xffC2C2C2)),
                      ),
                    ),
                    SizedBox(width: 18.w),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Container(
                        width: 50.w,
                        height: 17.h,
                        child: Text("2m ago",
                            style: TextStyle(
                                fontSize: 12.sp, color: Color(0xffC2C2C2))),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
