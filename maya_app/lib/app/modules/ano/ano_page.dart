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

/*import 'package:flutter/material.dart';

import 'package:maya/app/core/widgets/my_float_button_widget.dart';

class AnoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ano 1')),
      //endDrawer: MyDrawer(),
      floatingActionButton: MyFloatbutton(),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _card([
            itemCard('ALO MUNDO'),
            itemCard('ALO MUNDO'),
            itemCard('ALO MUNDO'),
            itemCard('ALO MUNDO'),
          ]),
          _card([
            itemCard('ALO MUNDO'),
            itemCard('ALO MUNDO'),
            itemCard('ALO MUNDO'),
            itemCard('ALO MUNDO'),
          ]),
          _card([
            itemCard('ALO MUNDO'),
            itemCard('ALO MUNDO'),
            itemCard('ALO MUNDO'),
            itemCard('ALO MUNDO'),
          ]),
          _card([
            itemCard('ALO MUNDO'),
            itemCard('ALO MUNDO'),
            itemCard('ALO MUNDO'),
            itemCard('ALO MUNDO'),
          ]),
        ],
      ),
    );
  }
}

Widget _card(List<Widget> itens) {
  return SizedBox(
    width: 300,
    child: Card(
      margin: const EdgeInsets.all(8.0),
      color: Colors.white,
      elevation: 10,
      child: Column(children: [
        ElevatedButton(
          onPressed: () => true,
          child: Text(
            'Novo Marco',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: itens,
          ),
        ),
      ]),
    ),
  );
}

Widget itemCard(String texto) {
  return Card(
    margin: const EdgeInsets.all(8.0),
    color: Colors.lightBlueAccent,
    child: SizedBox(
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    ),
  );
}*/