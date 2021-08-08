import 'package:flutter_modular/flutter_modular.dart';
import 'package:maya_app/app/modules/home/pages/day/day_bloc.dart';
import 'package:flutter/material.dart';

class DayPage extends StatefulWidget {
  final String title;
  const DayPage({Key? key, this.title = 'DayPage'}) : super(key: key);
  @override
  DayPageState createState() => DayPageState();
}
class DayPageState extends State<DayPage> {
  final DayBloc bloc = Modular.get();

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