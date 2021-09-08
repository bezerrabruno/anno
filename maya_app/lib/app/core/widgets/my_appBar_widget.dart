import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final List<String> titles = const ['Tasks'];
  final barBloc;

  const MyAppBar({
    Key? key,
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
                      titles[page],
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    GestureDetector(
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
