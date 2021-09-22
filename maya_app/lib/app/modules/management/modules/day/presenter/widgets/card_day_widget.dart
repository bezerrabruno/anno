import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../infra/model/task_model.dart';

import '../bloc/list_day/list_day_event.dart';
import '../bloc/list_day/list_day_bloc.dart';

class CardTask extends StatelessWidget {
  final int index;
  final TaskModel task;
  final ListDayBloc listDayBloc = Modular.get();

  CardTask({
    Key? key,
    required this.index,
    required this.task,
  }) : super(key: key);

  @override
  build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () => listDayBloc.add(ListDayEventRemoveTask(index)),
      child: SizedBox(
        height: 7.h,
        width: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Material(
            key: key,
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(24),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Checkbox(
                      value: task.chekBox!,
                      side: BorderSide(
                          color: Theme.of(context).backgroundColor, width: 2),
                      checkColor: Theme.of(context).primaryColor,
                      activeColor: Theme.of(context).backgroundColor,
                      onChanged: (bool? newValue) {
                        var newTesk = TaskModel(
                          chekBoxM: newValue,
                          descriptionM: task.description,
                          priorityM: task.priority,
                        );
                        listDayBloc.add(ListDayEventUpdateTask(index, newTesk));
                      }),
                  SizedBox(
                    height: double.maxFinite,
                    width: 55.w,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Center(
                            child: Text(
                              task.description!,
                              style: TextStyle(
                                  fontSize: 20.sp, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SizedBox(
                      height: double.maxFinite,
                      width: 15.w,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          task.priority!,
                          style:
                              TextStyle(fontSize: 16.sp, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  MaterialStateProperty<Color?> stateProperty(
    BuildContext context, {
    Color? colorDefault,
    Color? colorPressed,
    Color? colorSelected,
  }) {
    return MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.pressed)) {
        return colorPressed ?? Theme.of(context).backgroundColor;
      } else if (states.contains(MaterialState.selected)) {
        return colorSelected ?? Theme.of(context).backgroundColor;
      } else {
        return colorDefault ?? Theme.of(context).backgroundColor;
      }
    });
  }
}
