// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          IconButton(
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              print('home pressed');
              context.go('/');
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.school_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              print('courses');
              context.go('/courses');
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
            onPressed: () {
              print('myaccount');
              context.go('/myaccount');
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.email,
              color: Colors.white,
            ),
            onPressed: () {
              context.go('/message');
            },
          ),
          GestureDetector(
            child: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onTap: () {
              context.go('/settings');
            },
          ),
        ]),
      ),
    );
  }
}
