// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/screens/mobile/mobile_home.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        SizedBox(
          height: 100,
          width: 500,
          child: const Mobiletopbar(),
        ),
        Center(
            child: Text(
          'Courses Page',
          style:
              GoogleFonts.balooBhai2(fontSize: 30, fontWeight: FontWeight.bold),
        ))
      ],
    ));
  }
}
