import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../infra/model/task_model.dart';

import '../bloc/list_day/list_day_event.dart';
import '../bloc/list_day/list_day_bloc.dart';

class CardTask extends StatelessWidget {
  final Key key;
  final int index;
  final TaskModel task;

  final ListDayBloc _listDayBloc = Modular.get();

  CardTask(
    this.key,
    this.index,
    this.task,
  );

  @override
  build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: SizedBox(
        height: 7.h,
        width: double.maxFinite,
        child: Material(
          key: key,
          color: Theme.of(context).primaryColorLight,
          borderRadius: BorderRadius.circular(24),
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                    value: task.chekBox!,
                    onChanged: (bool? newValue) {
                      var newTesk = TaskModel(
                        chekBox: newValue,
                        description: task.description,
                        priority: task.priority,
                        type: task.type,
                      );
                      _listDayBloc.add(ListDayEventUpdateTask(index, newTesk));
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
                            style:
                                TextStyle(fontSize: 20.sp, color: Colors.white),
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
                        style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
