import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '/app/core/widgets/my_button_widget.dart';
import '/app/core/widgets/my_text_field_widget.dart';

import '../../infra/model/task_model.dart';
import '../bloc/list_day/list_day_bloc.dart';
import '../bloc/list_day/list_day_event.dart';

class PopUpDay extends StatelessWidget {
  final ListDayBloc _listDayBloc = Modular.get();
  final TextEditingController _controllerDescription = TextEditingController();

  PopUpDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      width: 35.w,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Text(
              'Task',
              style: TextStyle(
                  fontSize: 28.sp, color: Theme.of(context).primaryColorDark),
            ),
            Center(
              child: MyTextField(
                title: 'Description',
                controller: _controllerDescription,
              ),
            ),
            const Divider(),
            MyButton(
              title: 'Confirmar',
              width: 20.w,
              function: () {
                check(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void check(BuildContext context) {
    _listDayBloc.add(ListDayEventAddTask(TaskModel(
      chekBoxM: false,
      descriptionM: _controllerDescription.text,
      priorityM: '',
    )));
    Navigator.pop(context);
  }
}
