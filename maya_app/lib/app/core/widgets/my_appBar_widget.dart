import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final List<String> titles;
  final barBloc;

  const MyAppBar({
    required this.titles,
    required this.barBloc,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Bloc<dynamic, int>, int>(
      bloc: barBloc,
      builder: (context, state) {
        return Material(
          color: Theme.of(context).colorScheme.primary,
          child: SafeArea(
            child: Center(
              
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      titles[state],
                      style: Theme.of(context).appBarTheme.titleTextStyle,
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
