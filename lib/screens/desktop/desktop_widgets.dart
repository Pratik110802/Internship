import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:provider/provider.dart';

import '../../provider/tabprovider.dart';
import '../Common Widgets/common_widgets.dart';

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
            SizedBox(
              height: 900.h * 0.07,
            ),
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
            SizedBox(
              height: 900.h * 0.06,
            ),
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
            SizedBox(
              height: 900.h * 0.06,
            ),
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
            SizedBox(
              height: 900.h * 0.06,
            ),
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
            SizedBox(
              height: 900.h * 0.15,
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

class Homepagedesktop extends StatelessWidget {
  const Homepagedesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 1440.w * 0.049),
        const Column1(),
        SizedBox(width: 1440.w * 0.04),
        const Column2(),
      ],
    );
  }
}
