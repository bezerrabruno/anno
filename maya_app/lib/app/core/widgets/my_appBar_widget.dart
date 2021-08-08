import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '/app/modules/home/bloc/buttom_bar_bloc.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final List<String> titles;
  final Color? color;

  MyAppBar({
    required this.titles,
    this.color,
  });

  final ButtomBarBloc _barBloc = Modular.get();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ButtomBarBloc, int>(
      bloc: _barBloc,
      builder: (context, state) {
        return Container(
          color: color ?? Color.fromRGBO(12, 12, 77, 1),
          height: double.maxFinite,
          width: double.maxFinite,
          child: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      titles[state],
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.menu,
                        size: 35,
                        color: Colors.white,
                      ),
                      onTap: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
