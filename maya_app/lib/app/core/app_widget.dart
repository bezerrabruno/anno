import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Maya',
          initialRoute: '/home/day',
          theme: ThemeData(primarySwatch: Colors.blue),
          //darkTheme: ,
          themeMode: ThemeMode.system,
        ).modular();
      },
    );
  }
}
