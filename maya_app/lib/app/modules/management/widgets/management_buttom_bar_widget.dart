import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maya_app/app/modules/management/bloc/change_page/change_page_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ManagementButtomBar extends StatelessWidget {
  final Bloc<dynamic, int> barBloc;

  const ManagementButtomBar({
    Key? key,
    required this.barBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Bloc<dynamic, int>, int>(
      bloc: barBloc,
      builder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
          child: Material(
            color: Theme.of(context).primaryColor,
            elevation: 10,
            borderRadius: BorderRadius.circular(32),
            child: SizedBox(
              height: 6.5.h,
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
                        onTap: () => barBloc.add(ChangePageEvent.dayPage),
                        onLongPress: () => show(
                          context,
                          left: 9.w,
                          top: 78.5.h,
                          items: [
                            popItem(
                              context,
                              title: 'Day',
                              fuction: () =>
                                  barBloc.add(ChangePageEvent.dayPage),
                            ),
                            popItem(
                              context,
                              title: 'Calendar',
                              fuction: () =>
                                  barBloc.add(ChangePageEvent.calendarPage),
                            ),
                          ],
                        ),
                      ),
                      _iconButton(
                        title: 'Time',
                        index: 1,
                        indexBloc: index,
                        iconSelected: Icons.timer,
                        iconUnselected: Icons.timer_off,
                        onTap: () => barBloc.add(ChangePageEvent.timerPage),
                        onLongPress: () => show(
                          context,
                          left: 36.w,
                          top: 78.5.h,
                          items: [
                            popItem(
                              context,
                              title: 'Time',
                              fuction: () =>
                                  barBloc.add(ChangePageEvent.timerPage),
                            ),
                            popItem(
                              context,
                              title: 'Statistics',
                              fuction: () =>
                                  barBloc.add(ChangePageEvent.timerHistPage),
                            ),
                          ],
                        ),
                      ),
                      _iconButton(
                        title: 'Notes',
                        index: 2,
                        indexBloc: index,
                        iconSelected: Icons.notes,
                        iconUnselected: Icons.notes_outlined,
                        onTap: () => barBloc.add(ChangePageEvent.notesPage),
                        onLongPress: () => show(
                          context,
                          left: 64.w,
                          top: 84.3.h,
                          items: [
                            popItem(
                              context,
                              title: 'Notes',
                              fuction: () =>
                                  barBloc.add(ChangePageEvent.notesPage),
                            ),
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
