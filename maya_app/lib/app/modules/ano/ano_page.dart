import 'package:flutter_modular/flutter_modular.dart';
import 'package:maya_app/app/modules/ano/ano_bloc.dart';
import 'package:flutter/material.dart';

class AnoPage extends StatefulWidget {
  final String title;
  const AnoPage({Key? key, this.title = 'AnoPage'}) : super(key: key);
  @override
  AnoPageState createState() => AnoPageState();
}
class AnoPageState extends State<AnoPage> {
  final AnoBloc bloc = Modular.get();

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