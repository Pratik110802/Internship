import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Center(
            child: Text(
          'My Account Page',
          style:
              GoogleFonts.balooBhai2(fontSize: 30, fontWeight: FontWeight.bold),
        ))
      ],
    ));
  }
}
