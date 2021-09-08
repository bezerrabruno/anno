import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:maya_app/app/core/widgets/my_float_button_widget.dart';
import 'package:maya_app/app/modules/home/modules/days/presenter/widgets/list_day.dart';
import 'package:maya_app/app/modules/home/modules/days/presenter/widgets/popUp_day_widget.dart';

import '../infra/model/day_model.dart';
import 'bloc/find_day/find_day_bloc.dart';
import 'bloc/find_day/find_day_state.dart';
import 'bloc/list_day/list_day_bloc.dart';
import 'bloc/update_day/update_day_bloc.dart';

class DayPage extends StatefulWidget {
  final List<String> days = const [
    'Segunda',
    'Terça',
    'Quarta',
    'Quinta',
    'Sexta',
    'Sabado',
    'Domingo',
  ];

  @override
  DayPageState createState() => DayPageState();
}

class DayPageState extends State<DayPage> {
  final FindDayBloc findDayBloc = Modular.get();
  final UpdateDayBloc updateDayBloc = Modular.get();
  final ListDayBloc listDayBloc = Modular.get();

  final DateTime dateTime = DateTime.now().toUtc().add(Duration(hours: -3));

  @override
  Widget build(BuildContext context) {
    findDayBloc.add(widget.days[dateTime.weekday - 1]);
    return Scaffold(
      floatingActionButton: MyFloatButton(
        popUp: PopUpDay(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
            width: double.maxFinite,
            child: Center(
              child: Text(
                widget.days[dateTime.weekday - 1],
                style: TextStyle(
                  color: Theme.of(context).primaryColorDark,
                  fontSize: 35.sp,
                ),
              ),
            ),
          ),
          BlocBuilder<FindDayBloc, FindDayState>(
              bloc: findDayBloc,
              builder: (context, state) {
                if (state is StateFindDayLoading) {
                  return Center(
                    heightFactor: 1.6.h,
                    child: CircularProgressIndicator(),
                  );
                } else if (state is StateFindDayFailure) {
                  return Center(
                    heightFactor: 1.6.h,
                    child: Text(
                      state.message,
                      style: TextStyle(fontSize: 24.sp),
                    ),
                  );
                } else if (state is StateFindDaySuccess) {
                  return Expanded(
                    child: ListDayWidget(state.day.tasksM!),
                  );
                } else {
                  return SizedBox();
                }
              }),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  return updateDayBloc.add(
                    DayModel(
                        idName: widget.days[dateTime.weekday - 1],
                        tasksM: listDayBloc.state),
                  );
                },
                child: Text('Update')),
          ),
        ],
      ),
    );
  }

  /*Padding(
            padding: const EdgeInsets.only(left: 8, top: 8),
            child: SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _test(),
                  _test(),
                  _test(),
                  _test(),
                  _test(),
                  _test(),
                ],
              ),
            ),
          ),*/

  /*Widget _test() {
    return Container(
      height: 40,
      width: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
        borderRadius: BorderRadius.circular(26),
      ),
    );
  }*/
}
