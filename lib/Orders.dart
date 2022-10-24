import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freight_services/OrderDetails.dart';
import 'package:freight_services/Settings.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Unassignedtask2.dart';
import 'controller/bottomcontroller.dart';
import 'navBar.dart';

var selected;

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  var selected;
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
            title: Text("My Loads"),
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
                  onTap: (() {
                    Get.to(() => Settings());
                  }),
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
            ? OrderDetails()
            : SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  // height: double.infinity,
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ButtonBar(
                                alignment: MainAxisAlignment.start,
                                buttonPadding: EdgeInsets.all(0),
                                children: [
                                  TextButton(
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all<
                                            EdgeInsets>(EdgeInsets.all(0))),
                                    onPressed: () {},
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            'Orders',
                                            style: TextStyle(
                                                color: Color(0xffF99C2C)),
                                          ),
                                        ]),
                                  ),
                                  SizedBox(
                                    width: 25.w,
                                  ),
                                  TextButton(
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all<
                                            EdgeInsets>(EdgeInsets.all(0))),
                                    onPressed: () {},
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            'inprocess',
                                            style: TextStyle(
                                                color: Color(0xffC2C2C2)),
                                          ),
                                        ]),
                                  ),
                                  SizedBox(
                                    width: 25.w,
                                  ),
                                  TextButton(
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all<
                                            EdgeInsets>(EdgeInsets.all(0))),
                                    onPressed: () {},
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            'Dispatched',
                                            style: TextStyle(
                                                color: Color(0xffC2C2C2)),
                                          ),
                                        ]),
                                  ),
                                  SizedBox(
                                    width: 25.w,
                                  ),
                                  TextButton(
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all<
                                            EdgeInsets>(EdgeInsets.all(0))),
                                    onPressed: () {},
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            'completed',
                                            style: TextStyle(
                                                color: Color(0xffC2C2C2)),
                                          ),
                                        ]),
                                  ),
                                ]),
                          ]),
                      SizedBox(
                        height: 21.h,
                      ),
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
                                  blurRadius: 3.0,
                                  spreadRadius: 0.5,
                                  offset: Offset(
                                      0, 4 // Move to bottom 8.0 Vertically
                                      )),
                            ]),
                        child: Card(
                          elevation: 0,
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
                            SizedBox(
                              height: 10.h,
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
                            SizedBox(
                              height: 15.h,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      // setState(() {
                                      //   selected = 1;
                                      // });
                                    },
                                    child: Container(
                                      width: 11.w,
                                      height: 13.h,
                                      child: Icon(
                                        Icons.change_circle_sharp,
                                        color: Color(0xffF99C2C),
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    "Status",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Color(0xffF99C2C)),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 37),
                              child: Row(
                                children: [
                                  Container(
                                    height: 23.h,
                                    width: 250.w,
                                    child: Text(
                                      "Pick up tomorrow between",
                                      style: TextStyle(
                                          color: Color(0xffA2A2A2),
                                          fontSize: 16.sp),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 37),
                              child: Row(
                                children: [
                                  Container(
                                      height: 23.h,
                                      width: 92.w,
                                      child: Text(
                                        "11am - 2pm",
                                        style:
                                            TextStyle(color: Color(0xffA2A2A2)),
                                      )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selected = 1;
                                      });
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
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Status",
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            Container(
                                              height: 6.h,
                                              width: 10.w,
                                              child: ImageIcon(
                                                AssetImage(
                                                  "Assets/images/Icon ionic-ios-arrow-down.png",
                                                ),
                                                color: Color(0xffFFFFFF),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
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
                                  blurRadius: 3.0,
                                  spreadRadius: 0.5,
                                  offset: Offset(
                                      0, 4 // Move to bottom 8.0 Vertically
                                      )),
                            ]),
                        child: Card(
                          elevation: 0,
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
                                      "Russel jake",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
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
                            SizedBox(
                              height: 10.h,
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
                            SizedBox(
                              height: 13.h,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  Container(
                                    width: 11.w,
                                    height: 13.h,
                                    child: Icon(
                                      Icons.change_circle_sharp,
                                      color: Color(0xffF99C2C),
                                      size: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    "Status",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Color(0xffF99C2C)),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 37),
                              child: Row(
                                children: [
                                  Container(
                                    height: 23.h,
                                    width: 250.w,
                                    child: Text(
                                      "Your Shipment is pending",
                                      style: TextStyle(
                                          color: Color(0xffA2A2A2),
                                          fontSize: 16.sp),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 28.h,
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.symmetric(horizontal: 37),
                            //   child: Row(
                            //     children: [
                            //       Container(
                            //           height: 23,
                            //           width: 92,
                            //           child: Text(
                            //             "11am - 2pm",
                            //             style: TextStyle(color: Color(0xffA2A2A2)),
                            //           )),
                            //     ],
                            //   ),
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
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
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Status",
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: 7.w,
                                          ),
                                          Container(
                                            height: 6.h,
                                            width: 10.w,
                                            child: ImageIcon(
                                              AssetImage(
                                                "Assets/images/Icon ionic-ios-arrow-down.png",
                                              ),
                                              color: Color(0xffFFFFFF),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Myloads(),
                      SizedBox(
                        height: 16.h,
                      ),
                      Myloads(),
                    ],
                  ),
                ),
              ),
      ),
    );
  }

  Myloads() {
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
                    blurRadius: 3.0,
                    spreadRadius: 0.5,
                    offset: Offset(0, 4 // Move to bottom 8.0 Vertically
                        )),
              ]),
          child: Card(
            elevation: 0,
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
              SizedBox(
                height: 10.h,
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
                height: 13.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Container(
                      width: 11.w,
                      height: 13.h,
                      child: Icon(
                        Icons.change_circle_sharp,
                        color: Color(0xffF99C2C),
                        size: 15,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Status",
                      style:
                          TextStyle(fontSize: 18.sp, color: Color(0xffF99C2C)),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 37),
                child: Row(
                  children: [
                    Container(
                      height: 23.h,
                      width: 250.w,
                      child: Text(
                        "Pick up tomorrow between",
                        style: TextStyle(
                            color: Color(0xffA2A2A2), fontSize: 16.sp),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 37),
                child: Row(
                  children: [
                    Container(
                        height: 23.h,
                        width: 92.w,
                        child: Text(
                          "11am - 2pm",
                          style: TextStyle(color: Color(0xffA2A2A2)),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Status",
                              style: TextStyle(
                                  fontSize: 16.sp, color: Colors.white),
                            ),
                            SizedBox(
                              width: 7.w,
                            ),
                            Container(
                              height: 6.h,
                              width: 10.w,
                              child: ImageIcon(
                                AssetImage(
                                  "Assets/images/Icon ionic-ios-arrow-down.png",
                                ),
                                color: Color(0xffFFFFFF),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
