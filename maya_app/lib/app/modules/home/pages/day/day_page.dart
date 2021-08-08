/*import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'bloc/cards_day_bloc.dart';
import 'models/items_card_day.dart';

class DayPage extends StatefulWidget {
  const DayPage({Key? key}) : super(key: key);

  @override
  DayPageState createState() => DayPageState();
}

class DayPageState extends State<DayPage> {
  final List<String> _days = [
    'Segunda',
    'Terça',
    'Quarta',
    'Quinta',
    'Sexta',
    'Sabado',
    'Domingo',
  ];

  final DateTime _dateTime = DateTime.now().toUtc().add(Duration(hours: -3));

  final CardsDayBloc bloc = Modular.get();

  //StoreProvider.of<AppState>(context).dispatch(UpdateDataDay());
  //StoreProvider.of<AppState>(context).dispatch(UpdateCardDay());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(12, 12, 77, 1),
      body: Column(
        children: [
          Center(
            child: Text(
              '${_days[_dateTime.weekday - 1]}',
              style: TextStyle(
                fontSize: 30.sp,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Expanded(
            child: StoreConnector<AppState, Future<List<ItemsCardDay>>>(
                converter: (store) => store.state.dayState.tasks!,
                builder: (context, tasks) {
                  return FutureBuilder<List<ItemsCardDay>>(
                      initialData: <ItemsCardDay>[],
                      future: tasks,
                      builder: (context, snapshot) {
                        final List<ItemsCardDay> data = snapshot.requireData;
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: StaggeredGridView.countBuilder(
                            crossAxisCount: 2,
                            itemCount: data.length,
                            staggeredTileBuilder: (index) =>
                                StaggeredTile.fit(1),
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 4,
                            itemBuilder: (context, index) {
                              return CardDay(items: data[index]);
                            },
                          ),
                        );
                      });
                }),
          ),
        ],
      ),
    );
  }
}*/
