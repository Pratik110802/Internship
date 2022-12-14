import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
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
