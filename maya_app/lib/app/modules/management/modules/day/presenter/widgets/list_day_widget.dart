import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '/app/modules/management/modules/day/infra/model/task_model.dart';
import '/app/modules/management/modules/day/presenter/bloc/list_day/list_day_bloc.dart';
import '/app/modules/management/modules/day/presenter/bloc/list_day/list_day_event.dart';

import 'card_day_widget.dart';

class ListDayWidget extends StatelessWidget {
  final ListDayBloc listDayBloc = Modular.get();

  final List<TaskModel> tasks;

  ListDayWidget({
    Key? key,
    required this.tasks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    listDayBloc.add(ListDayEventInitState(tasks));
    return BlocBuilder<ListDayBloc, List<TaskModel>>(
        bloc: listDayBloc,
        builder: (context, tasks) {
          return ReorderableListView.builder(
            itemCount: tasks.length,
            buildDefaultDragHandles: true,
            itemBuilder: (context, index) {
              return CardTask(
                key: Key('$index'),
                index: index,
                task: tasks[index],
              );
            },
            onReorder: (int oldIndex, int newIndex) {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
              listDayBloc.add(ListDayEventReOrder(oldIndex, newIndex));
            },
          );
        });
  }
  /*
              
              var list = <Widget>[];
          for (var i = 0; i <= state.length - 1; i++) {
            list.add(Text(state[i].description!));
          }
              */
}
