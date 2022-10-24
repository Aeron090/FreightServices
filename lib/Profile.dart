import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Unassignedtask2.dart';
import 'controller/bottomcontroller.dart';
import 'navBar.dart';

var selected = 2;

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var selected;
  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Scaffold(
      // bottomNavigationBar: NavBar2(),
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
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: 428.w,
                height: 354.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("Assets/images/Group 838.png"),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Martin Harvard",
                        style: TextStyle(
                            fontSize: 26.sp, color: Color(0xffFFFFFF)),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = 1;
                      });
                    },
                    child: Container(
                      width: 213.5.w,
                      height: 58.h,
                      color: selected == 1 ? Color(0xffF99C2C) : Colors.black,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Current order",
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 14.sp, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = 2;
                      });
                    },
                    child: Container(
                      width: 214.5.w,
                      height: 58.h,
                      color: selected == 2 ? Colors.orange : Colors.black,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Order History",
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 14.sp, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              selected == 1
                  ? SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 43.h,
                            width: double.infinity,
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
                            child: SingleChildScrollView(
                              child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return currentOrder();
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(
                      height: 435.h,
                      width: double.infinity,
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
                                offset:
                                    Offset(0, 4 // Move to bottom 8.0 Vertically
                                        )),
                          ]),
                      child: SingleChildScrollView(
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return UnassignedCard();
                          },
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  UnassignedCard() {
    return Column(
      children: [
        Container(
          width: 386.w,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(5.r),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 3.0.r,
                    spreadRadius: 0.5.r,
                    offset: Offset(0, 4 // Move to bottom 8.0 Vertically
                        )),
              ]),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 19.h),
            child: Column(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
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
                  Container(
                    height: 16.h,
                    width: 4.w,
                    child: Image(
                      image: AssetImage(
                        "Assets/images/Group 254.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(children: [
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
                  width: 10.h,
                ),
                Text(
                  "497 Evergreen RD. Rosevilla,",
                  style: TextStyle(fontSize: 14.sp, color: Color(0xffA2A2A2)),
                )
              ]),
              SizedBox(
                height: 13.h,
              ),
              Row(children: [
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
                  width: 10.w,
                ),
                Text(
                  "497 Evergreen RD. Rosevilla,",
                  style: TextStyle(fontSize: 14.sp, color: Color(0xffA2A2A2)),
                )
              ]),
              SizedBox(
                height: 23.h,
              ),
              Row(children: [
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
              SizedBox(
                height: 7.h,
              ),
              Row(
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
                          Text(
                            "Weight :",
                            style: TextStyle(
                                fontSize: 14.sp, color: Color(0xffC2C2C2)),
                          ),
                        ],
                      ),
                      Text(
                        "2 lbs",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Get.to(() => Unassignedtask_2());
                    },
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
                          "Pending",
                          style:
                              TextStyle(fontSize: 16.sp, color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}

class currentOrder extends StatelessWidget {
  const currentOrder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                    blurRadius: 3.0.r,
                    spreadRadius: 0.5.r,
                    offset: Offset(0, 4 // Move to bottom 8.0 Vertically
                        )),
              ]),
          child: Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 19, vertical: 10),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
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
                  style: TextStyle(fontSize: 14.sp, color: Color(0xffA2A2A2)),
                )
              ]),
            ),
            SizedBox(
                // height: 13.h,
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
                  width: 10.w,
                ),
                Text(
                  "497 Evergreen RD. Rosevilla,",
                  style: TextStyle(fontSize: 14.sp, color: Color(0xffA2A2A2)),
                )
              ]),
            ),
            SizedBox(
              height: 13.h,
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
                    width: 50.w,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      width: 108.w,
                      height: 33.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.r),
                        ),
                        color: Color(0xffF98700),
                      ),
                      child: Center(
                        child: Text(
                          "Completed",
                          style:
                              TextStyle(fontSize: 16.sp, color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
