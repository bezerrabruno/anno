import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '/app/core/widgets/my_card_error.dart';
import '/app/core/widgets/my_drawer_widget.dart';

import 'bloc/page_routine/page_routine_bloc.dart';
import 'bloc/wallpaper_routine/wallpaper_routine_bloc.dart';

import 'widgets/routine_buttom_bar_widget.dart';

class RoutineWidget extends StatefulWidget {
  const RoutineWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<RoutineWidget> createState() => _RoutineWidgetState();
}

class _RoutineWidgetState extends State<RoutineWidget> {
  final WallpaperRoutineBloc wallpaperBloc = Modular.get();
  final PageRoutineBloc pageBloc = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const MyDrawer(),
      bottomNavigationBar: RoutineButtomBar(pageBloc: pageBloc),
      extendBody: true,
      body: Stack(
        children: [
          BlocBuilder<WallpaperRoutineBloc, String>(
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
          MyCardError(),
        ],
      ),
    );
  }
}
