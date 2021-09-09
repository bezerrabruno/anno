import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final List<String>? titles;
  final List<IconData>? buttons;
  final List<Function()>? actions;
  final bool? endDrawer;

  final barBloc;

  const MyAppBar({
    Key? key,
    this.titles,
    this.buttons,
    this.actions,
    this.endDrawer = false,
    required this.barBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Bloc<dynamic, int>, int>(
      bloc: barBloc,
      builder: (context, page) {
        return Material(
          color: Theme.of(context).primaryColor,
          elevation: 10,
          child: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      titles![page],
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    Row(
                      children: [
                        buttons == null
                            ? SizedBox()
                            : GestureDetector(
                                child: Icon(
                                  buttons![page],
                                  size: 25,
                                  color: Theme.of(context).backgroundColor,
                                ),
                                onTap: actions![page],
                              ),
                        SizedBox(
                          width: 3.w,
                        ),
                        endDrawer == false
                            ? SizedBox()
                            : GestureDetector(
                                child: Icon(
                                  Icons.menu,
                                  size: 35,
                                  color: Theme.of(context).backgroundColor,
                                ),
                                onTap: () {
                                  Scaffold.of(context).openEndDrawer();
                                },
                              ),
                      ],
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
