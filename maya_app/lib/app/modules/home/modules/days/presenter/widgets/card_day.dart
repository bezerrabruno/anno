import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:maya_app/app/modules/home/modules/days/presenter/bloc/list_day/list_day_event.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../infra/model/task_model.dart';

import '../bloc/card_day/card_day_bloc.dart';
import '../bloc/list_day/list_day_bloc.dart';

class CardTask extends StatelessWidget {
  final Key key;
  final TaskModel task;

  final CardDayBloc _cardDayBloc = Modular.get();
  final ListDayBloc _listDayBloc = Modular.get();

  CardTask(this.key, this.task);

  @override
  build(BuildContext context) {
    _cardDayBloc.add(task);
    return Container(
      key: key,
      height: 8.h,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Theme.of(context).primaryColorLight),
      child: BlocBuilder<CardDayBloc, TaskModel>(
          bloc: _cardDayBloc,
          builder: (context, state) {
            return Row(
              children: [
                Checkbox(
                    value: state.chekBox,
                    onChanged: (bool? newValue) {
                      var newTesk = TaskModel(
                        chekBox: newValue,
                        description: state.description,
                        priority: state.priority,
                        type: state.type,
                      );
                      _cardDayBloc.add(newTesk);
                      _listDayBloc
                          .add(ListDayEventUpdateTask(this.key, newTesk));
                    }),
                Text(
                  state.description!,
                  style: TextStyle(fontSize: 20.sp, color: Colors.white),
                ),
              ],
            );
          }),
    );
  }
}
