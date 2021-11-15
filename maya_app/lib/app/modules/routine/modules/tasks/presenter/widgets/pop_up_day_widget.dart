import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:maya_app/app/modules/routine/modules/tasks/domain/entities/task.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '/app/core/widgets/my_text_field_widget.dart';

import '../bloc/tasks_day/tasks_day_bloc.dart';
import '../bloc/tasks_day/tasks_day_event.dart';

class PopUpDay extends StatelessWidget {
  final TasksDayBloc _dayBloc = Modular.get();

  final TextEditingController _controllerDescription = TextEditingController();

  PopUpDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      width: 35.w,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Text(
              'Task',
              style: TextStyle(
                fontSize: 28.sp,
                color: Theme.of(context).primaryColorDark,
              ),
            ),
            Center(
              child: MyTextField(
                title: 'Description',
                controller: _controllerDescription,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            ElevatedButton(
              onPressed: () => check(context),
              child: const Text('Confirmar'),
            )
          ],
        ),
      ),
    );
  }

  void check(BuildContext context) {
    _dayBloc.add(ETDAddTask(
      Task(
        checkBox: false,
        description: _controllerDescription.text,
        priority: '',
      ),
    ));
    Navigator.pop(context);
  }
}
