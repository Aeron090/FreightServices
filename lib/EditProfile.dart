import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          width: 428.w,
          height: 354.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Assets/images/Group 838.png"),
                  fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Change Profile Picture",
                  style: TextStyle(fontSize: 12.sp, color: Color(0xffFFFFFF)),
                ),
                SizedBox(
                  width: 5.2.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Container(
                    width: 16.w,
                    height: 14.h,
                    child: Image.asset(
                      "Assets/images/Icon awesome-edit.png",
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 29.h,
        ),
        Column(
          children: [
            Container(
              width: 386.w,
              height: 80.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Name:",
                    style: TextStyle(fontSize: 12.sp, color: Color(0xffA2A2A2)),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: '        Martin Harvard',
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintStyle: TextStyle(
                            fontSize: 14.sp, color: Color(0xff262626))),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 27.h,
            ),
            Container(
              width: 386.w,
              height: 80.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email Address:",
                    style: TextStyle(fontSize: 12.sp, color: Color(0xffA2A2A2)),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText:
                            '        Martinharvard@freightservicesunlimited.com',
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintStyle: TextStyle(
                            fontSize: 14.sp, color: Color(0xff262626))),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 27.h,
            ),
            Container(
              width: 386.w,
              height: 80.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Phone Number:",
                    style: TextStyle(fontSize: 12.sp, color: Color(0xffA2A2A2)),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: '        123456789',
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintStyle: TextStyle(
                            fontSize: 14.sp, color: Color(0xff262626))),
                  )
                ],
              ),
            ),
          ],
        )
      ]),
    );
  }
}
