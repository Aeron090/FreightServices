import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freight_services/EditProfile.dart';
import 'package:freight_services/Profile.dart';
import 'package:freight_services/login.dart';
import 'package:freight_services/navBar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller/bottomcontroller.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      child: Scaffold(
        appBar: AppBar(
            leading: GestureDetector(
              onTap: (() {
                final bottomcontroller = Get.put(BottomController());
                bottomcontroller.navBarChange(2);
                Get.to(() => MainScreen());
              }),
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "Assets/images/Iconly-Bold-Arrow - Left Square.png"),
                        scale: 0.9)),
              ),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text("Settings"),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
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
                child: Container(
                  width: 23,
                  height: 23,
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
            ]),
        body: Column(
          children: [
            SizedBox(
              height: 36.h,
            ),
            Container(
              width: 386.w,
              height: 92.h,
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    width: 62.w,
                    height: 62.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image:
                                AssetImage("Assets/images/Mask Group 14.png"))),
                  ),
                  SizedBox(width: 9.w),
                  Text(
                    "Martin Harvard",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  SizedBox(width: 90.39.w),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => EditProfile());
                    },
                    child: Container(
                      width: 22.w,
                      height: 19.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "Assets/images/Icon awesome-edit.png"))),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 27.h,
            ),
            Divider(
              thickness: 1.5,
              color: Color(0xffC2C2C2),
              indent: 12,
              endIndent: 12,
            ),
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  Container(
                    width: 386.w,
                    height: 53.h,
                    child: Text(
                      "Account Settings",
                      style: TextStyle(color: Color(0xffA2A2A2), fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    width: 386.w,
                    height: 53.h,
                    child: Text(
                      "Notifications",
                      style: TextStyle(color: Color(0xffA2A2A2), fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    width: 386.w,
                    height: 53.h,
                    child: Text(
                      "Storage & Data",
                      style: TextStyle(color: Color(0xffA2A2A2), fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    width: 386.w,
                    height: 53.h,
                    child: Text(
                      "Help",
                      style: TextStyle(color: Color(0xffA2A2A2), fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => LoginScreen());
              },
              child: Container(
                width: 386.w,
                height: 53.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: Colors.black),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Log out",
                        style:
                            TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
                      ),
                    ],
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
