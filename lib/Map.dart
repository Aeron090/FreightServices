import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freight_services/Orders.dart';
import 'package:get/get.dart';

import 'controller/bottomcontroller.dart';
import 'navBar.dart';

var selected = 2;

class Map1 extends StatefulWidget {
  const Map1({super.key});

  @override
  State<Map1> createState() => _MapState();
}

class _MapState extends State<Map1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Assets/images/Image 18@3x.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 61.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 60.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Assets/images/Ellipse 1.png"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 235.w,
                ),
                GestureDetector(
                  onTap: () {
                    final bottomcontroller = Get.put(BottomController());
                    bottomcontroller.navBarChange(0);
                    Get.to(() => MainScreen());
                  },
                  child: Container(
                    width: 100.w,
                    height: 100.h,
                    child: Image(
                      image: AssetImage(
                        "Assets/images/Group 342@2x.png",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 360.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 277),
              child: Column(
                children: [
                  Image(image: AssetImage("Assets/images/Group 22.png"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
