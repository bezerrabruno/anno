import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'bloc/connection/connection_bloc.dart';
import 'bloc/connection/connection_event.dart';
import 'theme/my_theme.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> with WidgetsBindingObserver {
  final ConnectionBloc connectionBloc = Modular.get();
  late ThemeMode theme;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      print('Resumed');
    } else if (state == AppLifecycleState.paused) {
      print('Paused');
    } else if (state == AppLifecycleState.inactive) {
      print('Inactive');
    } else if (state == AppLifecycleState.detached) {
      print('Detached');
    }
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance!.addObserver(this);
  }

  void testConnection() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      connectionBloc.add(ECEConnection((result)));
    });
  }

  @override
  Widget build(BuildContext context) {
    testConnection();
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          theme: MyTheme.lightTheme(),
          darkTheme: MyTheme.darkTheme(),
          themeMode: ThemeMode.system,
          initialRoute: '/home/',
        ).modular();
      },
    );
  }
}
