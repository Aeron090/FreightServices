import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freight_services/NeedHelp.dart';
import 'package:freight_services/Notifications.dart';
import 'package:freight_services/OrderDetails.dart';
import 'package:freight_services/Orders.dart';
import 'package:freight_services/Profile.dart';

import 'package:freight_services/Unassignedtask2.dart';

import 'package:freight_services/controller/bottomcontroller.dart';
import 'package:get/get.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final bottomcontroller = Get.put(BottomController());
  int pageIndex = 0;

  final pages = [
    const Orders(),
    const Needhelp(),
    const Unassignedtask_2(),
    const Notifications(),
    const Profile(),
  ];
  void _onItemTapped(int index) {
    bottomcontroller.navBarChange(index);
  }

  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 236, 236, 236),
        body: GetBuilder<BottomController>(
          builder: (_) => pages[bottomcontroller.navigationBarIndexValue],
        ),
        // pages[pageIndex],
        bottomNavigationBar: GetBuilder<BottomController>(
          builder: (_) => buildMyNavBar(context),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
              height: 78.h,
              width: 78.w,
              decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.withOpacity(0.5),
                  //     spreadRadius: 2,
                  //     blurRadius: 50,
                  //     offset: Offset(0, 0), // changes position of shadow
                  //   ),
                  // ],
                  ),
              child: FloatingActionButton(
                  backgroundColor: bottomcontroller.navigationBarIndexValue == 2
                      ? Colors.black
                      : Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(AssetImage("Assets/images/logo copy.png"),
                            size: 45, color: Colors.orange),
                      ],
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      _onItemTapped(2);
                      // pageIndex = 2;
                      // bottomcontroller.navBarChange(2);
                    });
                    // Get.to(() => Unassignedtask_2());
                    // bottomcontroller.navBarChange(2);
                  })),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  buildMyNavBar(BuildContext context) {
    return Container(
      height: 70.h,
      width: double.infinity,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 50,
              offset: Offset(0, -8), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Color(0xffF99C2C)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _onItemTapped(0);
                });

                // Get.to(() => MainScreen());
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 22.5.w,
                    height: 22.5.h,
                    child: Image.asset(
                      "Assets/images/Group 658.png",
                      color: bottomcontroller.navigationBarIndexValue == 0
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Orders",
                    style: TextStyle(
                      letterSpacing: -0.48,
                      fontSize: 12.sp,
                      color: bottomcontroller.navigationBarIndexValue == 0
                          ? Colors.black
                          : Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   width: 30.w,
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _onItemTapped(1);
                    });

                    // Get.to(() => MainScreen());
                  },
                  child: Container(
                    width: 22.5.w,
                    height: 22.5.h,
                    child: Image.asset(
                      "Assets/images/Icon ionic-ios-help-circle.png",
                      color: bottomcontroller.navigationBarIndexValue == 1
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Need help",
                  style: TextStyle(
                    letterSpacing: -0.48,
                    fontSize: 12.sp,
                    color: bottomcontroller.navigationBarIndexValue == 1
                        ? Colors.black
                        : Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 60.w,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _onItemTapped(3);
                });

                // Get.to(() => MainScreen());
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 22.5.w,
                    height: 22.5.h,
                    child: Image.asset(
                      "Assets/images/Icon ionic-md-notifications.png",
                      color: bottomcontroller.navigationBarIndexValue == 3
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Notification",
                    style: TextStyle(
                      letterSpacing: -0.48,
                      fontSize: 12.sp,
                      color: bottomcontroller.navigationBarIndexValue == 3
                          ? Colors.black
                          : Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   width: 25.w,
            // ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _onItemTapped(4);
                });

                // Get.to(() => MainScreen());
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 22.5.w,
                    height: 22.5.h,
                    child: Image.asset(
                      "Assets/images/Iconly-Bold-Profile.png",
                      color: bottomcontroller.navigationBarIndexValue == 4
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                      letterSpacing: -0.48,
                      fontSize: 12.sp,
                      color: bottomcontroller.navigationBarIndexValue == 4
                          ? Colors.black
                          : Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class Page1 extends StatelessWidget {
//   const Page1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xffC4DFCB),
//       child: Center(
//         child: Text(
//           "Page Number 1",
//           style: TextStyle(
//             color: Colors.green[900],
//             fontSize: 45,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Page2 extends StatelessWidget {
//   const Page2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xffC4DFCB),
//       child: Center(
//         child: Text(
//           "Page Number 2",
//           style: TextStyle(
//             color: Colors.green[900],
//             fontSize: 45,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Page3 extends StatelessWidget {
//   const Page3({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xffC4DFCB),
//       child: Center(
//         child: Text(
//           "Page Number 3",
//           style: TextStyle(
//             color: Colors.green[900],
//             fontSize: 45,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Page4 extends StatelessWidget {
//   const Page4({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xffC4DFCB),
//       child: Center(
//         child: Text(
//           "Page Number 4",
//           style: TextStyle(
//             color: Colors.green[900],
//             fontSize: 45,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }
