// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship/responsive.dart';
import 'package:internship/screens/mobile/mobile_home.dart';
import 'screens/desktop/desktop_widgets.dart';
import 'screens/Common Widgets/common_widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: (Responsive.isDesktop(context) == true)
          ? const Size(1440, 900)
          : const Size(360, 800),
      builder: (context, child) => Scaffold(
        body: (Responsive.isDesktop(context) == true)
            ? Padding(
                padding: EdgeInsets.only(
                    top: 900.h * 0.026,
                    left: 1440.w * 0.022,
                    right: 1440.w * 0.055),
                child: Row(children: [
                  const DesktopTabbar(),
                  SizedBox(width: 1440.w * 0.049),
                  const Column1(),
                  SizedBox(width: 1440.w * 0.04375),
                  const Column2(),
                ]),
              )
            : Padding(
                padding: const EdgeInsets.only(left: 18, right: 16),
                child: SizedBox(
                  height: 800.h,
                  width: 360.w,
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 21.sp,
                      ),
                      const Mobiletopbar(),
                      SizedBox(
                        height: 47.sp,
                      ),
                      const Column1(),
                      const Column2()
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
