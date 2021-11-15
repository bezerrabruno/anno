import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:maya_app/app/modules/routine/modules/tasks/presenter/bloc/tasks_day/tasks_day_state.dart';
import 'package:maya_app/app/modules/routine/modules/tasks/presenter/widgets/card_day_widget.dart';
import '/app/core/widgets/my_float_button_widget.dart';

import 'bloc/tasks_day/tasks_day_event.dart';
import 'widgets/pop_up_day_widget.dart';

import 'bloc/tasks_day/tasks_day_bloc.dart';

class TasksPage extends StatefulWidget {
  final List<String> days = [
    'Segunda-Feira',
    'Terça-Feira',
    'Quarta-Feira',
    'Quinta-Feira',
    'Sexta-Feira',
    'Sabado',
    'Domingo',
  ];

  TasksPage({
    Key? key,
  }) : super(key: key);

  @override
  TasksPageState createState() => TasksPageState();
}

class TasksPageState extends State<TasksPage> {
  final dateTime = DateTime.now().toUtc().add(const Duration(hours: -3));

  final TasksDayBloc dayBloc = Modular.get();

  @override
  Widget build(BuildContext context) {
    dayBloc.add(ETDInitialState(widget.days[dateTime.weekday - 1]));
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: MyFloatButton(
        popUp: PopUpDay(),
      ),
      bottomNavigationBar: const SizedBox(
        height: kBottomNavigationBarHeight,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
              width: double.maxFinite,
              child: Center(
                child: Text(
                  widget.days[dateTime.weekday],
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            BlocBuilder<TasksDayBloc, TasksDayState>(
                bloc: dayBloc,
                builder: (context, taskState) {
                  if (taskState is STDLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (taskState is STDFailure) {
                    return Center(
                      child: Text(taskState.message),
                    );
                  } else if (taskState is STDSuccess) {
                    return Expanded(
                      child: ReorderableListView.builder(
                        itemCount: taskState.day.tasks!.length,
                        buildDefaultDragHandles: true,
                        itemBuilder: (context, index) {
                          return CardTask(
                            key: Key('$index'),
                            index: index,
                            task: taskState.day.tasks![index],
                          );
                        },
                        onReorder: (int oldIndex, int newIndex) {
                          if (oldIndex < newIndex) {
                            newIndex -= 1;
                          }
                          dayBloc.add(ETDReOrder(oldIndex, newIndex));
                        },
                      ),
                    );
                  } else {
                    return const SizedBox();
                  }
                }),
          ],
        ),
      ),
    );
  }
}
