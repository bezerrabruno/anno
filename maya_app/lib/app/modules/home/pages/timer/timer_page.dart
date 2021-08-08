import 'package:flutter_modular/flutter_modular.dart';
import 'package:maya_app/app/modules/home/pages/timer/timer_bloc.dart';
import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  final String title;
  const TimerPage({Key? key, this.title = 'TimerPage'}) : super(key: key);
  @override
  TimerPageState createState() => TimerPageState();
}
class TimerPageState extends State<TimerPage> {
  final TimerBloc bloc = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}