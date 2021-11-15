import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../bloc/page_routine/page_routine_bloc.dart';
import '../bloc/page_routine/page_routine_event.dart';

class RoutineButtomBar extends StatelessWidget {
  final PageRoutineBloc pageBloc;

  const RoutineButtomBar({
    Key? key,
    required this.pageBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageRoutineBloc, int>(
      bloc: pageBloc,
      builder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
          child: Material(
            color: Theme.of(context).colorScheme.primary,
            elevation: 10,
            borderRadius: BorderRadius.circular(32),
            child: SizedBox(
              height: 6.5.h,
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _iconButton(
                    context,
                    title: 'Tasks',
                    index: 0,
                    indexBloc: index,
                    iconSelected: Icons.task,
                    iconUnselected: Icons.task_outlined,
                    onTap: () => pageBloc.add(const EPRChangePage(page: 0)),
                  ),
                  _iconButton(
                    context,
                    title: 'Time',
                    index: 1,
                    indexBloc: index,
                    iconSelected: Icons.timer,
                    iconUnselected: Icons.timer_off,
                    onTap: () => pageBloc.add(const EPRChangePage(page: 1)),
                  ),
                  _iconButton(
                    context,
                    title: 'Goals',
                    index: 2,
                    indexBloc: index,
                    iconSelected: Icons.show_chart,
                    iconUnselected: Icons.show_chart_rounded,
                    onTap: () => pageBloc.add(const EPRChangePage(page: 2)),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _iconButton(
    BuildContext context, {
    required String title,
    required int index,
    required int indexBloc,
    required IconData iconSelected,
    IconData? iconUnselected,
    Function()? onTap,
  }) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(100),
      child: InkWell(
        onTap: onTap ?? () => true,
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
                color: indexBloc == index
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.onPrimary,
                size: 30,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: indexBloc == index
                      ? Theme.of(context).colorScheme.secondary
                      : Theme.of(context).colorScheme.onPrimary,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
