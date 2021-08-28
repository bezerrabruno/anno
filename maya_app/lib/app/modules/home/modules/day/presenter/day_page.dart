import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'bloc/tasks_day_state.dart';
import 'bloc/tasks_day_bloc.dart';

class DayPage extends StatefulWidget {
  final List<String> days = [
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
  final TasksDayBloc bloc = Modular.get();

  final DateTime dateTime = DateTime.now().toUtc().add(Duration(hours: -3));

  @override
  Widget build(BuildContext context) {
    bloc.add(widget.days[dateTime.weekday - 1]);
    return Scaffold(
      body: BlocBuilder<Bloc<String, TasksDayState>, TasksDayState>(
          bloc: bloc,
          builder: (context, state) {
            if (state is TasksDayLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is TasksDayFailure) {
              return Center(
                child: Text(
                  state.message,
                  style: TextStyle(fontSize: 30.sp),
                ),
              );
            } else if (state is TasksDaySuccess) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 8.h,
                    width: double.maxFinite,
                    child: Center(
                      child: Text(
                        widget.days[dateTime.weekday - 1],
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 35.h,
                      width: 80.w,
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              'Tasks',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26.sp,
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                                itemCount: state.day.tasks!.length,
                                itemBuilder: (context, index) {
                                  return Text(
                                    state.day.tasks![index],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26.sp,
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 35.h,
                      width: 80.w,
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              'Laisure',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26.sp,
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                                itemCount: state.day.leisure!.length,
                                itemBuilder: (context, index) {
                                  return Text(
                                    state.day.leisure![index],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26.sp,
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return SizedBox();
            }
          }),
    );
  }
}
