import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freight_services/NeedHelp.dart';
import 'package:freight_services/Orders.dart';
import 'package:freight_services/Profile.dart';
import 'package:freight_services/Settings.dart';
import 'package:freight_services/navBar.dart';
import 'package:freight_services/unassugnedtask3.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller/bottomcontroller.dart';

var selected = 0;

class Unassignedtask_2 extends StatefulWidget {
  const Unassignedtask_2({super.key});

  @override
  State<Unassignedtask_2> createState() => _Unassignedtask_2State();
}

class _Unassignedtask_2State extends State<Unassignedtask_2> {
  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
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
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    image: DecorationImage(
                        image: AssetImage(
                            "Assets/images/Iconly-Bold-Arrow - Left Square.png"),
                        scale: 0.9)),
              ),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text("Unassigned Task"),
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
        body: selected == 1
            ? SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  // width: res_width * 0.9,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Center(
                        child: Container(
                          width: 386.w,
                          height: 325.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.r),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 3.0,
                                    spreadRadius: 0.5,
                                    offset: Offset(
                                        0, 4 // Move to bottom 8.0 Vertically
                                        )),
                              ]),
                          child: Column(children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 19, vertical: 10),
                                  child: Container(
                                    height: 32.h,
                                    width: 160.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5.r),
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xffFAA845),
                                          Color(0xffF98700)
                                        ],
                                      ),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "Martin Harvard",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18.sp),
                                    )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18, vertical: 18),
                                  child: Container(
                                    height: 16.h,
                                    width: 4.w,
                                    child: Image(
                                      image: AssetImage(
                                        "Assets/images/Group 254.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 19),
                              child: Row(children: [
                                Container(
                                  width: 9.w,
                                  height: 13.h,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "Assets/images/Icon material-location-on.png"),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  "497 Evergreen RD. Rosevilla,",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Color(0xffA2A2A2)),
                                )
                              ]),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 19),
                              child: Row(children: [
                                Container(
                                  width: 9.w,
                                  height: 13.h,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "Assets/images/Ellipse 380.png"),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.h,
                                ),
                                Text(
                                  "497 Evergreen RD. Rosevilla,",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Color(0xffA2A2A2)),
                                )
                              ]),
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 19),
                              child: Row(children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          child: Text(
                                            "Truck type :",
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                color: Color(0xffC2C2C2)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: Text(
                                        "Truck",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 25.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          child: Text(
                                            "Commodity :",
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                color: Color(0xffC2C2C2)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: Text(
                                        "Raw material",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 19),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            child: Text(
                                              "Packing type :",
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: Color(0xffC2C2C2)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Text(
                                          "Test type",
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            child: Text(
                                              "Weight :",
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: Color(0xffC2C2C2)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Text(
                                          "2 lbs",
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 19.w,
                                ),
                                Container(
                                    width: 244.w,
                                    height: 42.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.r),
                                        ),
                                        color: Color(0xffE2E2E2)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 80),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Type your amount",
                                            hintStyle: TextStyle(
                                                fontSize: 15.sp,
                                                color: Color(0xffA2A2A2),
                                                height: 3)),
                                      ),
                                    )),
                                SizedBox(
                                  width: 10.w,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Get.back();
                                    // final bottomcontroller = Get.put(BottomController());
                                    // bottomcontroller.navBarChange(2);
                                    // Get.to(() => MainScreen());
                                    setState(() {
                                      selected = 0;
                                    });
                                  },
                                  child: Container(
                                    width: 94.w,
                                    height: 38.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5.r),
                                      ),
                                      color: Color(0xffF98700),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Submit",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Center(
                        child: Container(
                          width: 386.w,
                          height: 241.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.r),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 3.0,
                                    spreadRadius: 0.5,
                                    offset: Offset(
                                        0, 4 // Move to bottom 8.0 Vertically
                                        )),
                              ]),
                          child: Column(children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 19, vertical: 10),
                                  child: Container(
                                    height: 32.h,
                                    width: 160.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5.r),
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xffFAA845),
                                          Color(0xffF98700)
                                        ],
                                      ),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "Martin Harvard",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18.sp),
                                    )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18, vertical: 18),
                                  child: Container(
                                    height: 16.h,
                                    width: 4.w,
                                    child: Image(
                                      image: AssetImage(
                                        "Assets/images/Group 254.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 19),
                              child: Row(children: [
                                Container(
                                  width: 9.w,
                                  height: 13.h,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "Assets/images/Icon material-location-on.png"),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  "497 Evergreen RD. Rosevilla,",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Color(0xffA2A2A2)),
                                )
                              ]),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 19),
                              child: Row(children: [
                                Container(
                                  width: 9.w,
                                  height: 13.h,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "Assets/images/Ellipse 380.png"),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.h,
                                ),
                                Text(
                                  "497 Evergreen RD. Rosevilla,",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Color(0xffA2A2A2)),
                                )
                              ]),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 19),
                              child: Row(children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          child: Text(
                                            "Truck type :",
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                color: Color(0xffC2C2C2)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: Text(
                                        "Truck",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 25.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          child: Text(
                                            "Commodity :",
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                color: Color(0xffC2C2C2)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: Text(
                                        "Raw material",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 19),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Packing type :",
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: Color(0xffC2C2C2)),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "Test type",
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            child: Text(
                                              "Weight :",
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: Color(0xffC2C2C2)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Text(
                                          "2 lbs",
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 70.w,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selected = 1;
                                      });
                                    },
                                    child: GestureDetector(
                                      child: Container(
                                        width: 94.w,
                                        height: 33.h,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5.r),
                                          ),
                                          color: Color(0xffF98700),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Bid now",
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Unassignedtask2widget(),
                      SizedBox(
                        height: 10,
                      ),
                      Unassignedtask2widget(),
                      SizedBox(
                        height: 10,
                      ),
                      Unassignedtask2widget(),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }

  Container Unassignedtask2widget() {
    return Container(
      width: 386.w,
      height: 245.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(5.r),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 3.0,
                spreadRadius: 0.5,
                offset: Offset(0, 4 // Move to bottom 8.0 Vertically
                    )),
          ]),
      child: Column(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 10),
              child: Container(
                height: 32.h,
                width: 160.w,
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
                child: Center(
                    child: Text(
                  "Martin Harvard",
                  style: TextStyle(color: Colors.white, fontSize: 18.sp),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
              child: Container(
                height: 16.h,
                width: 4.w,
                child: Image(
                  image: AssetImage(
                    "Assets/images/Group 254.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Row(children: [
            Container(
              width: 9.w,
              height: 13.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage("Assets/images/Icon material-location-on.png"),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              "497 Evergreen RD. Rosevilla,",
              style: TextStyle(fontSize: 14.sp, color: Color(0xffA2A2A2)),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Row(children: [
            Container(
              width: 9.w,
              height: 13.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("Assets/images/Ellipse 380.png"),
                ),
              ),
            ),
            SizedBox(
              width: 10.h,
            ),
            Text(
              "497 Evergreen RD. Rosevilla,",
              style: TextStyle(fontSize: 14.sp, color: Color(0xffA2A2A2)),
            )
          ]),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      child: Text(
                        "Truck type :",
                        style: TextStyle(
                            fontSize: 14.sp, color: Color(0xffC2C2C2)),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Text(
                    "Truck",
                    style: TextStyle(fontSize: 16.sp, color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 25.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      child: Text(
                        "Commodity :",
                        style: TextStyle(
                            fontSize: 14.sp, color: Color(0xffC2C2C2)),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Text(
                    "Raw material",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
        SizedBox(
          height: 7.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text(
                          "Packing type :",
                          style: TextStyle(
                              fontSize: 14.sp, color: Color(0xffC2C2C2)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Text(
                      "Test type",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text(
                          "Weight :",
                          style: TextStyle(
                              fontSize: 14.sp, color: Color(0xffC2C2C2)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Text(
                      "2 lbs",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 70.w,
              ),
              Container(
                width: 94.w,
                height: 33.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.r),
                  ),
                  color: Color(0xffF98700),
                ),
                child: Center(
                  child: Text(
                    "Bid now",
                    style: TextStyle(fontSize: 16.sp, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
