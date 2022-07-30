import 'package:emadd_project/router/routes.dart';
import 'package:emadd_project/views/pages/home_page.dart';
import 'package:flutter/material.dart';

class RouteGenerate {
  static Route<dynamic> generator(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homePage:
        return _GeneratePageRoute(
          widget: const HoemPage(),
          routeName: settings.name!,
        );

      default:
        return _GeneratePageRoute(
          widget: const HoemPage(),
          routeName: settings.name!,
        );
    }
  }
}

class _GeneratePageRoute extends PageRouteBuilder {
  final Widget widget;
  final String routeName;
  _GeneratePageRoute({required this.widget, required this.routeName})
      : super(
            settings: RouteSettings(name: routeName),
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return widget;
            },
            transitionDuration: const Duration(milliseconds: 500),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return SlideTransition(
                textDirection: TextDirection.rtl,
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            });
}
