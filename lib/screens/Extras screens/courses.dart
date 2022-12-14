// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
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
