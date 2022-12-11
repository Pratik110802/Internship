// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// ignore: unused_import
import 'main.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) =>
      WidgetsBinding.instance.window.physicalSize.width < 400;
  static bool isTablet(BuildContext context) =>
      WidgetsBinding.instance.window.physicalSize.width < 2200 &&
      WidgetsBinding.instance.window.physicalSize.width >= 1700;

  static bool isDesktop(BuildContext context) =>
      WidgetsBinding.instance.window.physicalSize.width >= 850;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // If our width is more than 1100 then we consider it a desktop
    if (size.width >= 1100) {
      return desktop;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else if (size.width < 1100 && size.width >= 850) {
      return tablet!;
    }
    // Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}

class ResponsiveText extends StatelessWidget {
  ResponsiveText(
      {Key? key,
      this.height,
      this.width,
      required this.text,
      this.showColor,
      this.maxLines,
      required this.size,
      this.centered,
      this.style,
      this.justify,
      this.responsiveChecks})
      : super(key: key);
  final dynamic height;
  final dynamic width;
  final double size;
  final String text;
  final dynamic showColor;
  final int? maxLines;
  final bool? centered;
  final TextStyle? style;
  // ignore: prefer_typing_uninitialized_variables
  final justify;
  // ignore: prefer_typing_uninitialized_variables
  final responsiveChecks;

  @override
  Widget build(BuildContext context) {
    double convertedSize = responsiveChecks(context,
        mobile: size.sp.floorToDouble(),
        desktop: size.sp.floorToDouble(),
        tab: size.sp.floorToDouble());
    return Container(
      color: showColor == null ? Colors.transparent : Colors.teal.shade300,
      height: height,
      width: width,
      child: Align(
        alignment: centered == true ? Alignment.center : Alignment.centerLeft,
        child: AutoSizeText(
          text,
          style: style ?? const TextStyle(),
          minFontSize: convertedSize,
          maxFontSize: convertedSize,
          maxLines: maxLines ?? 2,
          textAlign: justify == true ? TextAlign.center : TextAlign.left,
        ),
      ),
    );
  }
}
