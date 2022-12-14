// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:internship/provider/tabprovider.dart';
import 'package:provider/provider.dart';

import '../Common Widgets/common_widgets.dart';

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
                children: [
                  Consumer<Tabprovider>(
                      builder: ((context, data, child) => IconButton(
                            icon: const Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              data.changetab(0);
                            },
                          ))),
                  Consumer<Tabprovider>(
                      builder: ((context, data, child) => IconButton(
                            icon: const Icon(
                              Icons.school_outlined,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              data.changetab(1);
                            },
                          ))),
                  Consumer<Tabprovider>(
                      builder: ((context, data, child) => IconButton(
                            icon: const Icon(
                              Icons.person_outlined,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              data.changetab(2);
                            },
                          ))),
                  Consumer<Tabprovider>(
                      builder: ((context, data, child) => IconButton(
                            icon: const Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              data.changetab(3);
                            },
                          ))),
                  Consumer<Tabprovider>(
                      builder: ((context, data, child) => IconButton(
                            icon: const Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              data.changetab(4);
                            },
                          ))),
                ])));
  }
}

class Homepagemobile extends StatelessWidget {
  const Homepagemobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 47.sp,
        ),
        const Column1(),
        const Column2()
      ],
    );
  }
}
