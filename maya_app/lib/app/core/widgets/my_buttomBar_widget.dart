import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyButtomBar extends StatelessWidget {
  final barBloc;

  const MyButtomBar({
    Key? key,
    required this.barBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Bloc<dynamic, int>, int>(
      bloc: barBloc,
      builder: (context, index) {
        return Material(
          color: Theme.of(context).primaryColor,
          elevation: 10,
          child: SizedBox(
            height: kToolbarHeight,
            width: double.maxFinite,
            child: Stack(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _iconButton(context, () => barBloc.add(0),
                          title: 'Tasks',
                          iconSelected: Icons.task,
                          iconUnselected: Icons.task_alt_outlined,
                          index: index),
                    ]),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _iconButton(
    BuildContext context,
    Function() function, {
    required String title,
    required IconData iconSelected,
    IconData? iconUnselected,
    required int index,
  }) {
    return GestureDetector(
      onTap: function,
      child: SizedBox(
        height: double.maxFinite,
        width: 20.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              index == 0 ? iconSelected : iconUnselected,
              color: index == 0 ? Colors.white : Colors.grey[600],
              size: 30,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16.sp,
                color: index == 0 ? Colors.white : Colors.grey[600],
              ),
            )
          ],
        ),
      ),
    );
  }
}
