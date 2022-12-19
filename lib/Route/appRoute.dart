import 'package:finderhostel/Pages/Home_Page.dart';
import 'package:flutter/material.dart';

import '../Pages/Home_screen.dart';
import '../Pages/lipa_mpesa.dart';
import '../presentation/details/detail_building_screen.dart';
import 'AppRouteName.dart';

class AppRoute {
  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.getStarted:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
          settings: settings,
        );
      case AppRouteName.home:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const HomeScreen(),
          transitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: (_, animation, __, child) {
            // slide in transition,
            // from right (x = 1) to center (x = 0) screen
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

      case AppRouteName.detailBuilding:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const DetailBuildingScreen(),
          transitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: (_, animation, __, child) {
            // slide in transition,
            // from right (x = 1) to center (x = 0) screen
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
         case AppRouteName.lipaMpesa:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const LipaMpesa(),
          transitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: (_, animation, __, child) {
            // slide in transition,
            // from right (x = 1) to center (x = 0) screen
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
    }

    return null;
  }
}
