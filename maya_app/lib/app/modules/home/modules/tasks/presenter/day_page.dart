import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'bloc/find_day/tasks_day_bloc.dart';
import 'bloc/find_day/tasks_day_state.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: double.maxFinite,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(26),
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(26),
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(26),
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(26),
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(26),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
            width: double.maxFinite,
            child: Center(
              child: Text(
                widget.days[dateTime.weekday - 1],
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
          BlocBuilder<Bloc<String, TasksDayState>, TasksDayState>(
              bloc: bloc,
              builder: (context, state) {
                print(state);
                if (state is StateTasksDayLoading) {
                  return Center(
                    heightFactor: 1.8.h,
                    child: CircularProgressIndicator(),
                  );
                } else if (state is StateTasksDayFailure) {
                  return Center(
                    child: Text(
                      state.message,
                      style: TextStyle(fontSize: 30.sp),
                    ),
                  );
                } else if (state is StateTasksDaySuccess) {
                  return Expanded(
                    child: ListView.builder(
                        itemCount: state.day.all!.length,
                        itemBuilder: (context, index) {
                          return Text(
                            state.day.all![index].description!,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26.sp,
                            ),
                          );
                        }),
                  );
                } else {
                  return SizedBox();
                }
              }),
        ],
      ),
    );
  }
}
