import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'bloc/connection/connection_bloc.dart';
import 'bloc/connection/connection_event.dart';
import 'bloc/theme/theme_bloc.dart';
import 'bloc/theme/theme_state.dart';
import 'theme/my_theme.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final ThemeBloc themeBloc = Modular.get();
  final ConnectionBloc connectionBloc = Modular.get();
  late ThemeMode theme;

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return BlocBuilder<ThemeBloc, ThemeState>(
        bloc: themeBloc,
        builder: (context, state) {
          if (state.theme == 0) {
            theme = ThemeMode.light;
          } else if (state.theme == 1) {
            theme = ThemeMode.dark;
          } else if (state.theme == 2) {
            theme = ThemeMode.system;
          }
          testConnection();
          return MaterialApp(
            title: 'Maya',
            initialRoute: '/routine/days/',
            theme: MyTheme.lightTheme(),
            darkTheme: MyTheme.darkTheme(),
            themeMode: ThemeMode.system,
          ).modular();
        },
      );
    });
  }

  void testConnection() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      connectionBloc.add(Connection((result)));
    });
  }
}
