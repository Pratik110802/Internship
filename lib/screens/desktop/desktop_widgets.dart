import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//Deskop Navigation Bar
class DesktopTabbar extends StatelessWidget {
  const DesktopTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 900),
      builder: (context, child) => Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          height: 900.h * 0.94,
          width: 1440.w * 0.089,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 900.h * 0.016),
              child: Container(
                width: 1440.w * 0.032,
                height: 900.h * 0.11,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/f_icon.png'))),
              ),
            ),
            SizedBox(
              height: 900.h * 0.071,
            ),
            const Icon(
              Icons.home,
              color: Colors.white,
            ),
            SizedBox(
              height: 900.h * 0.07,
            ),
            const Icon(
              Icons.school_outlined,
              color: Colors.white,
            ),
            SizedBox(
              height: 900.h * 0.06,
            ),
            const Icon(
              Icons.person_outlined,
              color: Colors.white,
            ),
            SizedBox(
              height: 900.h * 0.06,
            ),
            const Icon(
              Icons.email_outlined,
              color: Colors.white,
            ),
            SizedBox(
              height: 900.h * 0.06,
            ),
            const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            SizedBox(
              height: 900.h * 0.25,
            ),
            const Icon(
              Icons.logout,
              color: Colors.white,
            ),
            SizedBox(
              height: 900.h * 0.038,
            ),
          ]),
        ),
      ),
    );
  }
}
