import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freight_services/Settings.dart';

import 'package:get/get.dart';

import 'controller/bottomcontroller.dart';
import 'navBar.dart';

class Needhelp extends StatefulWidget {
  const Needhelp({super.key});

  @override
  State<Needhelp> createState() => _NeedhelpState();
}

class _NeedhelpState extends State<Needhelp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
            leading: GestureDetector(
              onTap: () {
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
            title: Text("Help center"),
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
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: Container(
                  width: 386.w,
                  height: 55.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.r),
                      ),
                      color: Color(0xffE2E2E2)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextField(
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Your Name",
                          hintStyle: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xffA2A2A2),
                              height: 3.h)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Container(
                width: 386.w,
                height: 55.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.r),
                    ),
                    color: Color(0xffE2E2E2)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextField(
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Carrier@freightservicesunlimited.com",
                        hintStyle: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xffA2A2A2),
                            height: 3.h)),
                  ),
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Container(
                width: 386.w,
                height: 55.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.r),
                    ),
                    color: Color(0xffE2E2E2)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextField(
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "123456789",
                        hintStyle: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xffA2A2A2),
                            height: 3.h)),
                  ),
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Container(
                width: 386.w,
                height: 288.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.r),
                    ),
                    color: Color(0xffE2E2E2)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextField(
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Add comment",
                        hintStyle: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xffA2A2A2),
                            height: 3.h)),
                  ),
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Container(
                width: 386.w,
                height: 55.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.r),
                  ),
                  color: Color(0xffF98700),
                ),
                child: Center(
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 16.sp, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
