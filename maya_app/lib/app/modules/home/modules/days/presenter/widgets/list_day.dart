import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:maya_app/app/modules/home/modules/days/infra/model/task_model.dart';
import 'package:maya_app/app/modules/home/modules/days/presenter/bloc/list_day/list_day_bloc.dart';
import 'package:maya_app/app/modules/home/modules/days/presenter/bloc/list_day/list_day_event.dart';

import 'card_day.dart';

class ListDayWidget extends StatelessWidget {
  final ListDayBloc listDayBloc = Modular.get();

  final List<TaskModel> tasks;

  ListDayWidget(this.tasks);

  @override
  Widget build(BuildContext context) {
    listDayBloc.add(ListDayEventInitState(tasks));
    return BlocBuilder<ListDayBloc, List<TaskModel>>(
        bloc: listDayBloc,
        builder: (context, tasks) {
          return ReorderableListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return CardTask(Key('$index'), tasks[index]);
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
