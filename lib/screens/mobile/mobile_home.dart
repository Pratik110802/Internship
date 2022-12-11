import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Mobiletopbar extends StatelessWidget {
  const Mobiletopbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, child) => Container(
        height: 800.h * 0.103,
        width: 360.w * 0.94,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.black),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              Icon(
                Icons.school_outlined,
                color: Colors.white,
              ),
              Icon(
                Icons.person_outlined,
                color: Colors.white,
              ),
              Icon(
                Icons.email_outlined,
                color: Colors.white,
              ),
              Icon(
                Icons.settings,
                color: Colors.white,
              )
            ]),
      ),
    );
  }
}
