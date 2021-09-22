import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'theme/my_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Maya',
          initialRoute: '/management/days',
          theme: MyTheme.lightTheme(),
          darkTheme: MyTheme.darkTheme(),
          themeMode: ThemeMode.system,
        ).modular();
      },
    );
  }
}
