import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/screens/mobile/mobile_home.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const SizedBox(
          height: 100,
          width: 500,
          child: Mobiletopbar(),
        ),
        Center(
            child: Text(
          'Settings Page',
          style:
              GoogleFonts.balooBhai2(fontSize: 30, fontWeight: FontWeight.bold),
        ))
      ],
    ));
  }
}
