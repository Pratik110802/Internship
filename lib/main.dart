// ignore_for_file: avoid_print

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:internship/screens/Extras%20screens/auth.dart';
import 'package:internship/screens/Extras%20screens/dashboard_account.dart';
import 'package:internship/Home.dart';
import 'package:internship/screens/Extras%20screens/onboarding.dart';
import 'responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layer();
  }
}

class Layer extends StatefulWidget {
  const Layer({Key? key}) : super(key: key);

  @override
  State<Layer> createState() => _LayerState();
}

class _LayerState extends State<Layer> {
  responsiveChecks(context) {
    if (Responsive.isDesktop(context) == true) {
      print('desktop');
      return const Size(1440, 1024);
    } else if (Responsive.isTablet(context) == true) {
      print('tab');
      return const Size(1024, 1366);
    } else {
      print('mobile');
      return const Size(360, 800);
    }
  }

  final GoRouter _router = GoRouter(
    errorBuilder: (context, state) => const Scaffold(
      body: Center(child: Text('Not found')),
    ),
    routes: <GoRoute>[
      GoRoute(
        routes: <GoRoute>[
          GoRoute(
            path: 'welcome',
            builder: (BuildContext context, GoRouterState state) =>
                const Onboarding(),
          ),
          GoRoute(
            path: 'auth',
            builder: (BuildContext context, GoRouterState state) =>
                const Authentication(),
          ),
          GoRoute(
            path: 'dashboard',
            builder: (BuildContext context, GoRouterState state) =>
                const MyAccount(),
          ),
        ],
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const Home(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ScreenUtilInit(
        minTextAdapt: true,
        designSize: responsiveChecks(context),
        builder: (BuildContext context, child) => AdaptiveTheme(
          light: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.white,
            scaffoldBackgroundColor: Colors.white,
            fontFamily: 'Open Sans Hebrew',
            cardColor: Colors.grey.shade300,
            primaryIconTheme: const IconThemeData(color: Colors.black),
            primaryColorDark: Colors.black,
            textTheme: const TextTheme(
              headline1: TextStyle(color: Colors.black),
              headline2: TextStyle(color: Colors.black87),
            ),
          ),
          dark: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.black,
            scaffoldBackgroundColor: Colors.black,
            fontFamily: 'Open Sans Hebrew',
            primaryColorDark: Colors.white,
            cardColor: Colors.grey.shade600,
            primaryIconTheme: const IconThemeData(color: Colors.grey),
            textTheme: const TextTheme(
              headline1: TextStyle(color: Colors.white),
              headline2: TextStyle(color: Colors.white70),
            ),
          ),
          initial: AdaptiveThemeMode.light,
          builder: (theme, darkTheme) => MaterialApp.router(
            debugShowMaterialGrid: false,
            debugShowCheckedModeBanner: false,
            title: '/',
            theme: theme,
            useInheritedMediaQuery: true,
            routerDelegate: _router.routerDelegate,
            routeInformationParser: _router.routeInformationParser,
            routeInformationProvider: _router.routeInformationProvider,
          ),
        ),
      ),
    );
  }
}
