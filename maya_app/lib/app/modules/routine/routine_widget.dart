import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:maya_app/app/core/bloc/connection/connection_bloc.dart';

import '/app/core/widgets/my_drawer_widget.dart';
import 'bloc/change_wallpaper/change_wallpaper_bloc.dart';
import 'widgets/routine_buttom_bar_widget.dart';

import 'bloc/change_page/change_page_bloc.dart';

class RoutineWidget extends StatefulWidget {
  const RoutineWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<RoutineWidget> createState() => _RoutineWidgetState();
}

class _RoutineWidgetState extends State<RoutineWidget> {
  final ConnectionBloc connectionBloc = Modular.get();
  final ChangeWallpaperBloc wallpaperBloc = Modular.get();
  final ChangePageBloc barBloc = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const MyDrawer(),
      body: Stack(
        children: [
          BlocBuilder<ChangeWallpaperBloc, String>(
              bloc: wallpaperBloc,
              builder: (context, state) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/app/assets/images/$state'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: RouterOutlet(),
                );
              }),
          Align(
            heightFactor: 0.8.h,
            child: BlocBuilder<ConnectionBloc, String>(
                bloc: connectionBloc,
                builder: (context, state) {
                  if (state == 'none') {
                    return Container(
                      height: 4.h,
                      width: 70.w,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'Connection Lost',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    );
                  } else {
                    return const SizedBox();
                  }
                }),
          ),
        ],
      ),
      bottomNavigationBar: RoutineButtomBar(
        bloc: barBloc,
      ),
      extendBody: true,
    );
  }
}
