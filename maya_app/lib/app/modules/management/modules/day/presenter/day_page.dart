import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '/app/core/widgets/my_button_widget.dart';
import '/app/core/widgets/my_float_button_widget.dart';

import 'widgets/list_day_widget.dart';
import 'widgets/pop_up_day_widget.dart';

import '../infra/model/day_model.dart';

import 'bloc/find_day/find_day_bloc.dart';
import 'bloc/find_day/find_day_state.dart';
import 'bloc/list_day/list_day_bloc.dart';
import 'bloc/update_day/update_day_bloc.dart';

class DayPage extends StatefulWidget {
  final List<String> days = const [
    'Segunda-Feira',
    'Terça-Feira',
    'Quarta-Feira',
    'Quinta-Feira',
    'Sexta-Feira',
    'Sabado',
    'Domingo',
  ];

  final FindDayBloc findDayBloc;
  final UpdateDayBloc updateDayBloc;
  final ListDayBloc listDayBloc;

  const DayPage({
    Key? key,
    required this.findDayBloc,
    required this.updateDayBloc,
    required this.listDayBloc,
  }) : super(key: key);

  @override
  DayPageState createState() => DayPageState();
}

class DayPageState extends State<DayPage> {
  final DateTime dateTime =
      DateTime.now().toUtc().add(const Duration(hours: -3));

  @override
  Widget build(BuildContext context) {
    widget.findDayBloc.add(widget.days[dateTime.weekday - 1]);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        floatingActionButton: MyFloatButton(
          popUp: PopUpDay(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: Column(
          children: [
            SizedBox(
              height: 10.h,
              width: double.maxFinite,
              child: Center(
                child: Text(
                  widget.days[dateTime.weekday - 1],
                  style: TextStyle(
                      color: Theme.of(context).primaryColorLight,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            BlocBuilder<FindDayBloc, FindDayState>(
                bloc: widget.findDayBloc,
                builder: (context, state) {
                  if (state is StateFindDayLoading) {
                    return Center(
                      heightFactor: 1.6.h,
                      child: const CircularProgressIndicator(),
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
                      child: ListDayWidget(tasks: state.day.tasksM!),
                    );
                  } else {
                    return const SizedBox();
                  }
                }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: MyButton(
                  title: 'Update',
                  width: 14.w,
                  function: () {
                    return widget.updateDayBloc.add(
                      DayModel(
                          idNameM: widget.days[dateTime.weekday - 1],
                          tasksM: widget.listDayBloc.state),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
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
