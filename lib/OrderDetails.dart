import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:expansion_widget/expansion_widget.dart';
import 'dart:math' as math;
import 'package:another_stepper/another_stepper.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freight_services/Map.dart';
import 'package:freight_services/Orders.dart';

import 'package:get/get.dart';

import 'Unassignedtask2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        // body: Padding(
        //   padding: const EdgeInsets.only(left: 20),
        //   child: AnotherStepper(
        //     stepperList: stepperData,
        //     stepperDirection: Axis.vertical,
        //     horizontalStepperHeight: 70.h,
        //     dotWidget: Container(
        //       padding: const EdgeInsets.all(8),
        //       decoration: const BoxDecoration(
        //           color: Colors.green,
        //           borderRadius: BorderRadius.all(Radius.circular(30))),
        //       child: const Icon(Icons.fastfood, color: Colors.white),
        //     ),
        //     activeBarColor: Colors.green,
        //     inActiveBarColor: Colors.grey,
        //     activeIndex: 2,
        //     barThickness: 8,
        //   ),
        // ),
      ),
    );
  }
}

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  bool _containerHeight = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Scaffold(
        // appBar: AppBar(
        //     leading: GestureDetector(
        //       onTap: () {
        //         Get.to(() => Orders());
        //       },
        //       child: Container(
        //         width: 20.w,
        //         height: 20.h,
        //         decoration: BoxDecoration(
        //             image: DecorationImage(
        //                 image: AssetImage(
        //                     "Assets/images/Iconly-Bold-Arrow - Left Square.png"),
        //                 scale: 0.9)),
        //       ),
        //     ),
        //     elevation: 0,
        //     backgroundColor: Colors.transparent,
        //     title: Text("My Loads"),
        //     centerTitle: true,
        //     flexibleSpace: Container(
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.only(
        //           bottomLeft: Radius.circular(25.r),
        //           bottomRight: Radius.circular(25.r),
        //         ),
        //         gradient: LinearGradient(
        //           begin: Alignment.topCenter,
        //           end: Alignment.bottomCenter,
        //           colors: [Color(0xffFAA845), Color(0xffF98700)],
        //         ),
        //       ),
        //     ),
        //     actions: [
        //       Padding(
        //         padding: const EdgeInsets.only(right: 22),
        //         child: Container(
        //           width: 23.w,
        //           height: 23.h,
        //           decoration: BoxDecoration(
        //             image: DecorationImage(
        //                 image: AssetImage(
        //                   "Assets/images/Icon ionic-ios-settings.png",
        //                 ),
        //                 fit: BoxFit.contain,
        //                 scale: 5),
        //           ),
        //         ),
        //       ),
        //     ]),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(children: [
              SizedBox(
                height: 30.h,
              ),
              Center(
                child: Container(
                  width: 386.w,
                  height: 262.h,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 19),
                        child: Container(
                          child: Text(
                            "Recipient",
                            style: TextStyle(
                                fontSize: 18.sp, color: Color(0xffA2A2A2)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          child: Text(
                            "Martin Harvard",
                            style: TextStyle(
                                fontSize: 16.sp, color: Color(0xff262626)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(children: [
                          Container(
                              width: 13.w,
                              height: 18.h,
                              child: Image.asset(
                                  "Assets/images/Icon material-location-on.png")),
                          SizedBox(
                            width: 23.w,
                          ),
                          Container(
                            child: Text(
                              "497 Evergreen RD. Rosevilla,",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 52),
                        child: Row(
                          children: [
                            Text(
                              "0856-5898-6668",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(children: [
                          Container(
                              width: 13.w,
                              height: 18.h,
                              child: Image.asset(
                                  "Assets/images/Icon ionic-ios-calendar.png")),
                          SizedBox(
                            width: 23.w,
                          ),
                          Container(
                            child: Text(
                              "Estimated arrivals",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Color(0xffA2A2A2),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Row(
                          children: [
                            Text(
                              "Dec 4th between 08:00am - 10:00am",
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _containerHeight = !_containerHeight;
                  });
                },
                child: Column(
                  children: [
                    AnimatedContainer(
                        height: _containerHeight == true ? 560 : 339,
                        width: 386.w,
                        duration: Duration(milliseconds: 500),
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
                          physics: NeverScrollableScrollPhysics(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 17.w),
                                  Text(
                                    "Status",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Color(0xffA2A2A2)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 13.w),
                                  Container(
                                    width: 13.w,
                                    height: 18.h,
                                    child: Image.asset(
                                        "Assets/images/Icon ionic-ios-checkmark-circle-outline.png"),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Container(
                                    child: Text(
                                      "Everything's on track",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0xffF99C2C),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 13),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          "Assets/images/Group 283.png",
                                        ),
                                        Container(
                                          height: 86.h,
                                          width: 1.w,
                                          color: Colors.orange,
                                        ),
                                        Container(
                                          child: Image.asset(
                                              "Assets/images/Group 283.png"),
                                        ),
                                        Container(
                                          height: 86.h,
                                          width: 1.w,
                                          color: Colors.orange,
                                        ),
                                        Container(
                                          child: Image.asset(
                                              "Assets/images/Group 283.png"),
                                        ),
                                        Container(
                                          height: 86.h,
                                          width: 1.w,
                                          color: Colors.orange,
                                        ),
                                        Container(
                                          child: Image.asset(
                                              "Assets/images/Group 283.png"),
                                        ),
                                        Container(
                                          height: 86.h,
                                          width: 1.w,
                                          color: Colors.orange,
                                        ),
                                        Container(
                                          child: Image.asset(
                                              "Assets/images/Group 283.png"),
                                        ),
                                        SizedBox(
                                          height: 35.h,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 18.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Kebon jeruk",
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Color(0xffC2C2C2)),
                                            ),
                                            SizedBox(
                                              width: 110.w,
                                            ),
                                            Container(
                                              child: Text(
                                                "Oct 8 7:10am",
                                                style: TextStyle(
                                                    fontSize: 16.sp,
                                                    color: Color(0xffC2C2C2)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 284.w,
                                              height: 23.h,
                                              child: Text(
                                                "Shipment on the way to destination",
                                                style: TextStyle(
                                                    fontSize: 14.5.sp),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Get.to(() => Map1());
                                          },
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 144,
                                                height: 23,
                                                child: Text(
                                                  "Track your courier",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Color(0xffF99C2C)),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Kebon jeruk",
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Color(0xffC2C2C2)),
                                            ),
                                            SizedBox(
                                              width: 110.w,
                                            ),
                                            Container(
                                              child: Text(
                                                "Oct 8 7:10am",
                                                style: TextStyle(
                                                    fontSize: 16.sp,
                                                    color: Color(0xffC2C2C2)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Arrived Hub",
                                              style: TextStyle(fontSize: 16.sp),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 30.h,
                                        ),
                                        _containerHeight == false
                                            ? Text(
                                                'Show full shipment history',
                                                style: TextStyle(
                                                    fontSize: 16.sp,
                                                    color: Colors.orange),
                                              )
                                            : Row(
                                                children: [
                                                  Text(
                                                    "Kebon jeruk",
                                                    style: TextStyle(
                                                        fontSize: 16.sp,
                                                        color:
                                                            Color(0xffC2C2C2)),
                                                  ),
                                                  SizedBox(
                                                    width: 110.w,
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      "Oct 8 7:10am",
                                                      style: TextStyle(
                                                          fontSize: 16.sp,
                                                          color: Color(
                                                              0xffC2C2C2)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "In transit to destination",
                                              style: TextStyle(fontSize: 16.sp),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 40.h,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Kebon jeruk",
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Color(0xffC2C2C2)),
                                            ),
                                            SizedBox(
                                              width: 110.w,
                                            ),
                                            Container(
                                              child: Text(
                                                "Oct 8 7:10am",
                                                style: TextStyle(
                                                    fontSize: 16.sp,
                                                    color: Color(0xffC2C2C2)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Arrived Hub",
                                              style: TextStyle(fontSize: 16.sp),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 41.h,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Kebon jeruk",
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Color(0xffC2C2C2)),
                                            ),
                                            SizedBox(
                                              width: 112.w,
                                            ),
                                            Container(
                                              child: Text(
                                                "Oct 8 7:10am",
                                                style: TextStyle(
                                                    fontSize: 16.sp,
                                                    color: Color(0xffC2C2C2)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Picked Up",
                                              style: TextStyle(fontSize: 16.sp),
                                            ),
                                          ],
                                        ),
                                        _containerHeight == true
                                            ? SizedBox(height: 30.h)
                                            : Container(),
                                        _containerHeight == true
                                            ? Text(
                                                'Show less',
                                                style: TextStyle(
                                                    fontSize: 16.sp,
                                                    color: Colors.orange),
                                              )
                                            : Container(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )

                        // Text('data'),
                        // Text('data'),
                        // Text('data'),
                        // Text('data'),
                        // Text('data'),
                        // Text('data'),
                        // Text('data'),
                        // _containerHeight == true ? Text('data') : Container(),
                        // _containerHeight == true ? Text('data') : Container(),
                        // _containerHeight == true ? Text('data') : Container(),
                        // _containerHeight == true ? Text('data') : Container(),
                        // _containerHeight == true ? Text('data') : Container(),
                        ),
                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
