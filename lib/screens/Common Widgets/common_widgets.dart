import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship/responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart';

//Middle Column 1 of desktop
class Column1 extends StatelessWidget {
  const Column1({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: (Responsive.isDesktop(context) == true)
            ? const Size(1440, 900)
            : const Size(360, 800),
        builder: (context, child) => SizedBox(
              width: (Responsive.isDesktop(context) == true)
                  ? 1440.w * 0.43
                  : 360.w * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HelloCard(),
                  SizedBox(
                    height: (Responsive.isDesktop(context) == true)
                        ? 900.h * 0.04
                        : 800.h * 0.04,
                  ),
                  const SelectedCourseCard(),
                  SizedBox(
                    height: (Responsive.isDesktop(context) == true)
                        ? 900.h * 0.04
                        : 800.h * 0.01,
                  ),
                  Text(
                    'Courses',
                    style: GoogleFonts.baloo2(
                        fontSize: (Responsive.isDesktop(context) == true)
                            ? 24.sp
                            : 20.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: (Responsive.isDesktop(context) == true)
                        ? 900.h * 0.011
                        : 800.h * 0.01,
                  ),
                  SizedBox(
                    height: 900.h * 0.0288,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'All courses',
                            style: GoogleFonts.baloo2(
                                color: Colors.black,
                                fontSize:
                                    (Responsive.isDesktop(context) == true)
                                        ? 16.sp
                                        : 12.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: (Responsive.isDesktop(context) == true)
                                ? 1440.w * 0.020
                                : 360.w * 0.02,
                          ),
                          Text(
                            'The Newest',
                            style: GoogleFonts.baloo2(
                                color: Colors.grey[400],
                                fontSize:
                                    (Responsive.isDesktop(context) == true)
                                        ? 15.sp
                                        : 11.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: (Responsive.isDesktop(context) == true)
                                ? 1440.w * 0.020
                                : 360.w * 0.02,
                          ),
                          Text(
                            'Top Rated',
                            style: GoogleFonts.baloo2(
                                color: Colors.grey[400],
                                fontSize:
                                    (Responsive.isDesktop(context) == true)
                                        ? 15.sp
                                        : 11.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: (Responsive.isDesktop(context) == true)
                                ? 1440.w * 0.020
                                : 360.w * 0.02,
                          ),
                          Text(
                            'Most Popular',
                            style: GoogleFonts.baloo2(
                                color: Colors.grey[400],
                                fontSize:
                                    (Responsive.isDesktop(context) == true)
                                        ? 15.sp
                                        : 11.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 900.h * 0.011,
                  ),
                  SizedBox(
                    height: 900.h * 0.515,
                    child: ListView(
                      children: [
                        const CourseCard(),
                        SizedBox(
                          height: 900.h * 0.017,
                        ),
                        const CourseCard(),
                        const SizedBox(
                          height: 16,
                        ),
                        const CourseCard(),
                        const SizedBox(
                          height: 16,
                        ),
                        const CourseCard(),
                        const SizedBox(
                          height: 16,
                        ),
                        const CourseCard()
                      ],
                    ),
                  )
                ],
              ),
            ));
  }
}

class HelloCard extends StatelessWidget {
  const HelloCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ((Responsive.isDesktop(context) == true)
          ? const Size(1440, 900)
          : const Size(360, 800)),
      builder: (context, child) => Container(
        height: (Responsive.isDesktop(context) == true)
            ? 900.h * 0.177
            : 800.h * 0.15,
        width: (Responsive.isDesktop(context) == true)
            ? 1440.w * 0.43
            : 360.h * 0.9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: const Color(0xfff5f5f7)),
        child: Row(children: [
          SizedBox(
            width: (Responsive.isDesktop(context) == true)
                ? 1440.w * 0.021
                : 360.h * 0.038,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: (Responsive.isDesktop(context) == true)
                    ? 900.h * 0.05
                    : 800.h * 0.033,
              ),
              Text(
                'Hello Josh!',
                style: GoogleFonts.baloo2(
                    fontSize:
                        (Responsive.isDesktop(context) == true) ? 36.sp : 24.sp,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "It's good to see you again",
                style: GoogleFonts.baloo2(
                  fontSize:
                      (Responsive.isDesktop(context) == true) ? 16.sp : 16.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            width: (Responsive.isDesktop(context) == true)
                ? 1440.w * 0.086
                : 360.h * 0,
          ),
          Stack(
            children: [
              SizedBox(
                width: (Responsive.isDesktop(context) == true)
                    ? 1440.w * 0.121
                    : 360.h * 0.34,
                height: (Responsive.isDesktop(context) == true)
                    ? 900.h * 0.212
                    : 800.h * 0.176,
              ),
              Image(
                image: const AssetImage('assets/images/IllustrationHello.png'),
                width: (Responsive.isDesktop(context) == true)
                    ? 1440.w * 0.121
                    : 360.h * 0.34,
                height: (Responsive.isDesktop(context) == true)
                    ? 900.h * 0.212
                    : 800.h * 0.176,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class SelectedCourseCard extends StatelessWidget {
  const SelectedCourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (Responsive.isDesktop(context) == true)
          ? 900.h * 0.088
          : 800.h * 0.07,
      width: (Responsive.isDesktop(context) == true)
          ? 1440.w * 0.43
          : 360.h * 0.905,
      child: Row(children: [
        Container(
          height: (Responsive.isDesktop(context) == true)
              ? 900.h * 0.088
              : 800.h * 0.07,
          width: (Responsive.isDesktop(context) == true)
              ? 1440.w * 0.347
              : 360.w * 0.711,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: const Color(0xfff5f5f7)),
          child: Row(children: [
            Padding(
              padding: EdgeInsets.only(
                top: (Responsive.isDesktop(context) == true)
                    ? 900.h * 0.006
                    : 800.h * 0.0075,
                bottom: (Responsive.isDesktop(context) == true)
                    ? 900.h * 0.006
                    : 800.h * 0.0075,
                left: (Responsive.isDesktop(context) == true)
                    ? 1440.w * 0.0041
                    : 360.w * 0.016,
              ),
              child: Container(
                height: (Responsive.isDesktop(context) == true)
                    ? 900.h * 0.071
                    : 800.h * 0.05,
                width: (Responsive.isDesktop(context) == true)
                    ? 900.h * 0.071
                    : 800.h * 0.05,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        scale: 1.h,
                        image: const AssetImage(
                          'assets/images/spanish_flag.png',
                        ))),
              ),
            ),
            SizedBox(
              width: (Responsive.isDesktop(context) == true)
                  ? 1440.w * 0.0166
                  : 360.w * 0.02,
            ),
            SizedBox(
              width: (Responsive.isDesktop(context) == true)
                  ? 1440.w * 0.08
                  : 360.w * 0.23,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: (Responsive.isDesktop(context) == true)
                        ? 900.h * 0.01
                        : 800.h * 0.016,
                  ),
                  Text(
                    'Spanish B2',
                    style: GoogleFonts.balooBhai2(
                        fontWeight: FontWeight.bold,
                        fontSize: (Responsive.isDesktop(context) == true)
                            ? 16.sp
                            : 10.sp),
                  ),
                  SizedBox(
                    height: 1.sp,
                  ),
                  Text(
                    'by Alejandro Velazquez',
                    style: GoogleFonts.roboto(
                        fontSize: (Responsive.isDesktop(context) == true)
                            ? 11.sp
                            : 10.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: (Responsive.isDesktop(context) == true)
                  ? 1440.w * 0.031
                  : 360.w * 0,
            ),
            SizedBox(
              height: (Responsive.isDesktop(context) == true)
                  ? 1440.w * 0.027
                  : 360.w * 0.077,
              width: (Responsive.isDesktop(context) == true)
                  ? 1440.w * 0.027
                  : 360.w * 0.077,
              child: Stack(
                children: [
                  Icon(
                    Icons.circle_outlined,
                    size:
                        (Responsive.isDesktop(context) == true) ? 40.sp : 24.sp,
                  ),
                  Positioned(
                    top: (Responsive.isDesktop(context) == true) ? 15.h : 8.h,
                    left: (Responsive.isDesktop(context) == true) ? 8.w : 3.5.w,
                    child: Text(
                      '100%',
                      style: TextStyle(
                          fontSize: (Responsive.isDesktop(context) == true)
                              ? 10.sp
                              : 7.sp),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: (Responsive.isDesktop(context) == true)
                  ? 1440.w * 0.027
                  : 360.w * 0.043,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(
                    (Responsive.isDesktop(context) == true)
                        ? 1440.w * 0.083
                        : 360.w * 0.175,
                    (Responsive.isDesktop(context) == true)
                        ? 900.h * 0.044
                        : 800.h * 0.035,
                  )),
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  foregroundColor:
                      MaterialStateProperty.all(const Color(0xfff5f5f7)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: const BorderSide(color: Colors.black)))),
              child: Text(
                'Continue',
                style: TextStyle(
                    fontSize:
                        (Responsive.isDesktop(context) == true) ? 10.sp : 7.sp),
              ),
            ),
          ]),
        ),
        SizedBox(
          width: (Responsive.isDesktop(context) == true)
              ? 1440.w * 0.0159
              : 360.w * 0.015,
        ),
        Icon(
          Icons.arrow_circle_left_outlined,
          size: (Responsive.isDesktop(context) == true) ? 40.sp : 28.sp,
        ),
        SizedBox(
          width: (Responsive.isDesktop(context) == true)
              ? 1440.w * 0.0111
              : 360.w * 0.01,
        ),
        Icon(
          Icons.arrow_circle_right_outlined,
          size: (Responsive.isDesktop(context) == true) ? 40.sp : 28.sp,
        ),
      ]),
    );
  }
}

class CourseCard extends StatelessWidget {
  const CourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (Responsive.isDesktop(context) == true)
          ? 900.h * 0.088
          : 800.h * 0.07,
      width: (Responsive.isDesktop(context) == true)
          ? 1440.w * 0.43
          : 360.h * 0.905,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            14,
          ),
          color: const Color(0xFFF5F5F7)),
      child: Row(children: [
        Padding(
          padding: EdgeInsets.only(
            top: (Responsive.isDesktop(context) == true)
                ? 900.h * 0.006
                : 800.h * 0.0075,
            bottom: (Responsive.isDesktop(context) == true)
                ? 900.h * 0.006
                : 800.h * 0.0075,
            left: (Responsive.isDesktop(context) == true)
                ? 1440.w * 0.0041
                : 360.w * 0.016,
          ),
          child: Container(
            height: (Responsive.isDesktop(context) == true)
                ? 900.h * 0.071
                : 800.h * 0.05,
            width: (Responsive.isDesktop(context) == true)
                ? 900.h * 0.071
                : 800.h * 0.05,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    scale: 1.h,
                    image: const AssetImage(
                      'assets/images/figma.png',
                    ))),
          ),
        ),
        SizedBox(
          width: (Responsive.isDesktop(context) == true)
              ? 1440.w * 0.0166
              : 360.w * 0.02,
        ),
        SizedBox(
          width: (Responsive.isDesktop(context) == true)
              ? 1440.w * 0.08
              : 360.w * 0.24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: (Responsive.isDesktop(context) == true)
                    ? 900.h * 0.01
                    : 800.h * 0.016,
              ),
              Text(
                'Spanish B2',
                style: GoogleFonts.balooBhai2(
                    fontWeight: FontWeight.bold,
                    fontSize: (Responsive.isDesktop(context) == true)
                        ? 16.sp
                        : 10.sp),
              ),
              SizedBox(
                height: 1.sp,
              ),
              Text(
                'by Alejandro Velazquez',
                style: GoogleFonts.roboto(
                    fontSize: (Responsive.isDesktop(context) == true)
                        ? 11.sp
                        : 10.sp),
              ),
            ],
          ),
        ),
        SizedBox(
          width: (Responsive.isDesktop(context) == true)
              ? 1440.w * 0.031
              : 360.w * 0,
        ),
        Icon(
          Icons.watch_later,
          size: 16.sp,
        ),
        SizedBox(
          width: (Responsive.isDesktop(context) == true)
              ? 1440.w * 0.005
              : 360.w * 0.005,
        ),
        SizedBox(
          width: (Responsive.isDesktop(context) == true)
              ? 1440.w * 0.038
              : 360.w * 0.12,
          child: Text(
            '6h 30min',
            style: TextStyle(
                fontSize:
                    (Responsive.isDesktop(context) == true) ? 13.sp : 9.sp),
          ),
        ),
        SizedBox(
          width: (Responsive.isDesktop(context) == true)
              ? 1440.w * 0.027
              : 360.w * 0.005,
        ),
        Icon(
          Icons.local_fire_department_sharp,
          size: 18.sp,
        ),
        SizedBox(
          width: (Responsive.isDesktop(context) == true)
              ? 1440.w * 0.006
              : 360.w * 0.01,
        ),
        Text(
          '4,9',
          style: TextStyle(
              fontSize:
                  (Responsive.isDesktop(context) == true) ? 13.sp : 10.sp),
        ),
        SizedBox(
          width: (Responsive.isDesktop(context) == true)
              ? 1440.w * 0.0215
              : 360.w * 0.03,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(Size(
                (Responsive.isDesktop(context) == true)
                    ? 1440.w * 0.083
                    : 360.w * 0.175,
                (Responsive.isDesktop(context) == true)
                    ? 900.h * 0.044
                    : 800.h * 0.035,
              )),
              backgroundColor:
                  MaterialStateProperty.all(const Color(0xfff5f5f7)),
              foregroundColor: MaterialStateProperty.all(Colors.black),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: const BorderSide(color: Colors.black)))),
          child: Text(
            'View course',
            style: TextStyle(
                fontSize: (Responsive.isDesktop(context) == true) ? 13.sp : 9),
          ),
        ),
      ]),
    );
  }
}

//Desktop Column2

class Column2 extends StatelessWidget {
  const Column2({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: (Responsive.isDesktop(context) == true)
            ? const Size(1440, 900)
            : const Size(360, 800),
        builder: (context, child) => SizedBox(
              width: (Responsive.isDesktop(context) == true)
                  ? 1440.w * 0.30
                  : 360.w * 0.867,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: (Responsive.isDesktop(context) == true)
                          ? 900.h * 0.05
                          : 800.h * 0.05,
                      width: double.infinity,
                      child: Row(children: [
                        SizedBox(
                          height: (Responsive.isDesktop(context) == true)
                              ? 900.h * 0.044
                              : 800.h * 0.026,
                          width: (Responsive.isDesktop(context) == true)
                              ? 1440.w * 0.208
                              : 360.w * 0.591,
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xfff5f5f7),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide.none),
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: Colors.black,
                                )),
                          ),
                        ),
                        Icon(
                          size: 10.sp,
                          Icons.mail_outline,
                          color: Colors.white,
                        ),
                        Badge(
                          badgeContent: Text(
                            '1',
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.sp),
                          ),
                          badgeColor: const Color(0xffF45B5B),
                          position: BadgePosition(start: 12.sp, bottom: 12.sp),
                          child: Icon(
                            Icons.notifications_active_outlined,
                            size: 24.sp,
                          ),
                        ),
                        SizedBox(
                          width: 10.sp,
                        ),
                        SizedBox(
                          height: (Responsive.isDesktop(context) == true)
                              ? 900.h * 0.034
                              : 800.h * 0.026,
                          width: (Responsive.isDesktop(context) == true)
                              ? 1440.w * 0.034
                              : 360.w * 0.15,
                          child: Row(children: [
                            Container(
                              height: (Responsive.isDesktop(context) == true)
                                  ? 1440.w * 0.018
                                  : 800.h * 0.026,
                              width: (Responsive.isDesktop(context) == true)
                                  ? 1440.w * 0.018
                                  : 360.w * 0.07,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      scale: 1.sp,
                                      image: const AssetImage(
                                          'assets/images/profileimage.png'))),
                            ),
                            Icon(
                              Icons.arrow_drop_down_sharp,
                              size: 14.sp,
                            )
                          ]),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: (Responsive.isDesktop(context) == true)
                          ? 900.h * 0.0255
                          : 800.h * 0.0225,
                    ),
                    SizedBox(
                      height: (Responsive.isDesktop(context) == true)
                          ? 900.h * 0.106
                          : 800.h * 0.09375,
                      child: Row(children: [
                        Container(
                          height: (Responsive.isDesktop(context) == true)
                              ? 900.h * 0.106
                              : 800.h * 0.09375,
                          width: (Responsive.isDesktop(context) == true)
                              ? 1440.w * 0.144
                              : 360.w * 0.411,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: const Color(0xfff5f5f7)),
                          child: Row(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: (Responsive.isDesktop(context) == true)
                                    ? 900.h * 0.01
                                    : 800.h * 0.02625,
                                left: (Responsive.isDesktop(context) == true)
                                    ? 1440.w * 0.0243
                                    : 360.w * 0.044,
                              ),
                              child: Text(
                                '11',
                                style: GoogleFonts.baloo2(
                                    color: Colors.black,
                                    fontSize:
                                        (Responsive.isDesktop(context) == true)
                                            ? 48.sp
                                            : 30.sp,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            SizedBox(
                              width: 10.sp,
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: (Responsive.isDesktop(context) == true)
                                        ? 900.h * 0.03
                                        : 800.h * 0.02625,
                                  ),
                                  child: Text(
                                    'Courses',
                                    style: GoogleFonts.roboto(
                                        fontSize:
                                            (Responsive.isDesktop(context) ==
                                                    true)
                                                ? 14.sp
                                                : 12.sp),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    bottom:
                                        (Responsive.isDesktop(context) == true)
                                            ? 900.h * 0.01
                                            : 800.h * 0.02625,
                                  ),
                                  child: Text(
                                    'Completed',
                                    style: GoogleFonts.roboto(
                                        fontSize:
                                            (Responsive.isDesktop(context) ==
                                                    true)
                                                ? 14.sp
                                                : 12.sp),
                                  ),
                                )
                              ],
                            )
                          ]),
                        ),
                        SizedBox(
                          width: 16.sp,
                        ),
                        Container(
                          height: (Responsive.isDesktop(context) == true)
                              ? 900.h * 0.106
                              : 800.h * 0.09375,
                          width: (Responsive.isDesktop(context) == true)
                              ? 1440.w * 0.144
                              : 360.w * 0.411,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: const Color(0xfff5f5f7)),
                          child: Row(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: (Responsive.isDesktop(context) == true)
                                    ? 900.h * 0.01
                                    : 800.h * 0.02625,
                                left: (Responsive.isDesktop(context) == true)
                                    ? 1440.w * 0.0243
                                    : 360.w * 0.044,
                              ),
                              child: Text(
                                '4',
                                style: GoogleFonts.baloo2(
                                    color: Colors.black,
                                    fontSize:
                                        (Responsive.isDesktop(context) == true)
                                            ? 48.sp
                                            : 30.sp,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            SizedBox(
                              width: 10.sp,
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: (Responsive.isDesktop(context) == true)
                                        ? 900.h * 0.03
                                        : 800.h * 0.02625,
                                  ),
                                  child: Text(
                                    'Courses',
                                    style: GoogleFonts.roboto(
                                        fontSize:
                                            (Responsive.isDesktop(context) ==
                                                    true)
                                                ? 14.sp
                                                : 12.sp),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    bottom:
                                        (Responsive.isDesktop(context) == true)
                                            ? 900.h * 0.01
                                            : 800.h * 0.02625,
                                  ),
                                  child: Text(
                                    'in progress',
                                    style: GoogleFonts.roboto(
                                        fontSize:
                                            (Responsive.isDesktop(context) ==
                                                    true)
                                                ? 14.sp
                                                : 12.sp),
                                  ),
                                )
                              ],
                            )
                          ]),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 36.sp,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3.0),
                      child: Text(
                        'Your Statistics',
                        style: GoogleFonts.baloo2(
                            fontWeight: FontWeight.w800,
                            fontSize: (Responsive.isDesktop(context) == true)
                                ? 24.sp
                                : 14.sp),
                      ),
                    ),
                    SizedBox(
                      height: 22.sp,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3.0.sp),
                      child: SizedBox(
                        height: (Responsive.isDesktop(context) == true)
                            ? 40.sp
                            : 20.sp,
                        child: Row(children: [
                          Column(
                            children: [
                              Text(
                                'Learning Hours',
                                style: GoogleFonts.baloo2(
                                    fontWeight: FontWeight.w800,
                                    fontSize:
                                        (Responsive.isDesktop(context) == true)
                                            ? 16.sp
                                            : 12.sp),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 17.sp,
                          ),
                          Column(
                            children: [
                              Text(
                                'My Courses',
                                style: GoogleFonts.baloo2(
                                    color: Colors.grey[400],
                                    fontWeight: FontWeight.w800,
                                    fontSize:
                                        (Responsive.isDesktop(context) == true)
                                            ? 16.sp
                                            : 12.sp),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: (Responsive.isDesktop(context) == true)
                                ? 97.sp
                                : 70.sp,
                          ),
                          Container(
                            height: 25.sp,
                            width: 75.sp,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xfff5f5f7)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 6.0.sp),
                                  child: Text(
                                    'Weekly',
                                    style: GoogleFonts.roboto(fontSize: 12.sp),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down_outlined,
                                  size: 20.sp,
                                )
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: (Responsive.isDesktop(context) == true)
                          ? 900.h * 0.35
                          : 800.h * 0.25,
                      width: (Responsive.isDesktop(context) == true)
                          ? 1440.w * 0.4
                          : 360.w * 0.8,
                      child: const Image(
                          image: AssetImage('assets/images/graph.png')),
                    ),
                    SizedBox(
                      height: 3.sp,
                    ),
                    Container(
                      height: (Responsive.isDesktop(context) == true)
                          ? 900.h * 0.214
                          : 800.h * 0.1875,
                      width: (Responsive.isDesktop(context) == true)
                          ? 1440.w * 0.305
                          : 360.w * 0.866,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color(0xfff5f5f7)),
                      child: Row(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 17.sp,
                                top: 19.0.sp,
                              ),
                              child: Text(
                                'Learn even more!',
                                style: GoogleFonts.balooBhai2(
                                    fontWeight: FontWeight.w700,
                                    fontSize:
                                        (Responsive.isDesktop(context) == true)
                                            ? 24.sp
                                            : 18.sp),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(top: 8.0.sp, left: 17.sp),
                              child: Text(
                                'Unlock premium features',
                                style: TextStyle(fontSize: 13.sp),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 17.sp),
                              child: Text(
                                'only for 9.99 per month.',
                                style: TextStyle(fontSize: 13.sp),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(top: 14.0.sp, left: 17.sp),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.black)),
                                child: Text(
                                  'Go Premium ',
                                  style:
                                      GoogleFonts.roboto(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 18.sp, right: 10.sp, bottom: 24.sp),
                          child: SizedBox(
                            height: (Responsive.isDesktop(context) == true)
                                ? 1440.w * 0.086
                                : 360.w * 0.244,
                            width: (Responsive.isDesktop(context) == true)
                                ? 1440.w * 0.086
                                : 360.w * 0.244,
                            child: Image(
                              image: const AssetImage(
                                  'assets/images/brain_book.png'),
                              height: (Responsive.isDesktop(context) == true)
                                  ? 1440.w * 0.086
                                  : 360.w * 0.244,
                              width: (Responsive.isDesktop(context) == true)
                                  ? 1440.w * 0.086
                                  : 360.w * 0.244,
                            ),
                          ),
                        )
                      ]),
                    ),
                  ]),
            ));
  }
}
