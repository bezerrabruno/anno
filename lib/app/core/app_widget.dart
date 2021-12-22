import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'blocs/theme/theme_bloc.dart';
import 'blocs/connection/connection_bloc.dart';
import 'blocs/connection/connection_event.dart';

import 'theme/my_theme.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> with WidgetsBindingObserver {
  final ThemeBloc themeBloc = Modular.get();
  final ConnectionBloc connectionBloc = Modular.get();

//   @override
//   void initState() {
//     WidgetsBinding.instance!.addObserver(this);
//     super.initState();
//   }

//   @override
//   void didChangeAppLifecycleState(AppLifecycleState state) {
//     if (state == AppLifecycleState.resumed) {
//       log('Resumed');
//     } else if (state == AppLifecycleState.paused) {
//       log('paused');
//     } else if (state == AppLifecycleState.inactive) {
//       log('Inactive');
//     } else if (state == AppLifecycleState.detached) {
//       log('Detached');
//     }
//     super.didChangeAppLifecycleState(state);
//   }

//   @override
//   void dispose() {
//     WidgetsBinding.instance!.addObserver(this);
//     super.dispose();
//   }

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return BlocBuilder(
            bloc: themeBloc,
            builder: (context, ThemeMode state) {
              return MaterialApp(
                theme: MyTheme.lightTheme(),
                darkTheme: MyTheme.darkTheme(),
                themeMode: state,
                initialRoute: '/loggedOut/',
              ).modular();
            });
      },
    );
  }
}
