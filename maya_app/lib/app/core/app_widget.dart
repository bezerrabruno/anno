import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:maya_app/app/core/widgets/my_theme_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Maya',
          initialRoute: '/home/days',
          theme: MyTheme.lightTheme,
          darkTheme: MyTheme.darkTheme,
          themeMode: ThemeMode.system,
        ).modular();
      },
    );
  }
}
