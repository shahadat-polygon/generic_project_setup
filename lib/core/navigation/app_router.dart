import 'dart:io';
import 'package:flutter/material.dart';
import 'package:generic_project_setup/core/navigation/route_paths.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    Widget widget;

    widget = Container();
    switch (settings.name) {
      case RoutePaths.landingScreen:
        widget =  Container()/*LandingScreen()*/;
        break;
      case RoutePaths.qrScan:
        widget = Container()/*QrScanScreen(isForEndTrip: settings.arguments as bool)*/;
        break;
      default:
        return MaterialPageRoute(
          builder: (context) => Container(),
        );
    }

    if (Platform.isIOS) {
      return MaterialPageRoute(
        builder: (context) {
          return WillPopScope(
            onWillPop: () => _onPop(context),
            child: widget,
          );
        },
        settings:
        RouteSettings(name: settings.name, arguments: settings.arguments),
      );
    }

    return _createRoute(settings, widget);
  }

  static Route _createRoute(final RouteSettings settings, final widget) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) => widget,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = const Offset(1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;
        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  static Future<bool> _onPop(BuildContext context) async {
    if (Navigator.of(context).userGestureInProgress) {
      return Future<bool>.value(false);
    }
    return Future<bool>.value(true);
  }
}

