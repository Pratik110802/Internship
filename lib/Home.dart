// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship/provider/tabprovider.dart';
import 'package:internship/responsive.dart';

import 'package:internship/screens/mobile/mobile_home.dart';
import 'package:provider/provider.dart';
import 'screens/Extras screens/courses.dart';
import 'screens/Extras screens/dashboard_account.dart';
import 'screens/Extras screens/message.dart';
import 'screens/Extras screens/settings.dart';
import 'screens/desktop/desktop_widgets.dart';
import 'screens/Common Widgets/common_widgets.dart';

class Home extends StatelessWidget {
  Home({super.key});

  int current = 0;

  final tabsmobile = [
    const Homepagemobile(),
    const Courses(),
    const MyAccount(),
    const Message(),
    const Settings()
  ];

  final tabsdesktop = [
    const Homepagedesktop(),
    const Courses(),
    const MyAccount(),
    const Message(),
    const Settings()
  ];

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
                  SizedBox(
                      width: 1440.w * 0.8335,
                      height: 900.h,
                      child: Consumer<Tabprovider>(
                        builder: (_, data, __) {
                          return tabsdesktop[data.current];
                        },
                      ))
                ]),
              )
            : Padding(
                padding: const EdgeInsets.only(left: 18, right: 16),
                child: SizedBox(
                  height: 800.h,
                  width: 360.w,
                  child: ListView(
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    children: [
                      SizedBox(
                        height: 21.sp,
                      ),
                      const Mobiletopbar(),
                      Consumer<Tabprovider>(
                        builder: (_, data, __) {
                          return tabsmobile[data.current];
                        },
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
