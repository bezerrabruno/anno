import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeButtomBar extends StatelessWidget {
  final Bloc<dynamic, int> barBloc;

  const HomeButtomBar({
    Key? key,
    required this.barBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Bloc<dynamic, int>, int>(
      bloc: barBloc,
      builder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            color: Theme.of(context).primaryColor,
            elevation: 10,
            borderRadius: BorderRadius.circular(32),
            child: SizedBox(
              height: kToolbarHeight,
              width: double.maxFinite,
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _iconButton(
                        title: 'Tasks',
                        index: 0,
                        indexBloc: index,
                        iconSelected: Icons.task,
                        iconUnselected: Icons.task_outlined,
                        onTap: () => barBloc.add(0),
                        onLongPress: () => show(
                          context,
                          left: 35,
                          top: 640,
                          items: [
                            popItem(
                              context,
                              title: 'Day',
                              fuction: () => barBloc.add(0),
                            ),
                            popItem(context, title: 'Calendar'),
                          ],
                        ),
                      ),
                      _iconButton(
                        title: 'Time',
                        index: 1,
                        indexBloc: index,
                        iconSelected: Icons.timer,
                        iconUnselected: Icons.timer_off,
                        onTap: () => barBloc.add(1),
                        onLongPress: () => show(
                          context,
                          left: 150,
                          top: 640,
                          items: [
                            popItem(context, title: 'Time'),
                            popItem(context, title: 'Statistics'),
                          ],
                        ),
                      ),
                      _iconButton(
                        title: 'Notes',
                        index: 2,
                        indexBloc: index,
                        iconSelected: Icons.notes,
                        iconUnselected: Icons.task_alt_outlined,
                        onTap: () => barBloc.add(2),
                        onLongPress: () => show(
                          context,
                          left: 265,
                          top: 688,
                          items: [
                            popItem(context, title: 'Notes'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _iconButton({
    required String title,
    required int index,
    required int indexBloc,
    required IconData iconSelected,
    IconData? iconUnselected,
    Function()? onTap,
    Function()? onLongPress,
  }) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(100),
      child: InkWell(
        onTap: onTap ?? () => true,
        onLongPress: onLongPress ?? () => true,
        borderRadius: BorderRadius.circular(100),
        child: SizedBox(
          height: 7.h,
          width: 14.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                indexBloc == index
                    ? iconSelected
                    : iconUnselected ?? iconSelected,
                color: indexBloc == index ? Colors.white : Colors.grey[600],
                size: 30,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: indexBloc == index ? Colors.white : Colors.grey[600],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future show(
    BuildContext context, {
    required double left,
    required double top,
    required List<PopupMenuEntry<dynamic>> items,
  }) {
    return showMenu(
      context: context,
      position: RelativeRect.fromLTRB(left, top, 300, 100),
      color: Theme.of(context).primaryColor,
      items: items,
    );
  }

  PopupMenuEntry<dynamic> popItem(
    BuildContext context, {
    required String title,
    Function()? fuction,
  }) {
    return PopupMenuItem(
      onTap: fuction ?? () => true,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            color: Theme.of(context).backgroundColor,
          ),
        ),
      ),
    );
  }
}
