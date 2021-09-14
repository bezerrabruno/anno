import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:maya_app/app/modules/ano/anno_bloc.dart';

import 'package:maya_app/app/core/widgets/my_float_button_widget.dart';

class AnnoPage extends StatefulWidget {
  const AnnoPage({Key? key}) : super(key: key);

  @override
  AnnoPageState createState() => AnnoPageState();
}

class AnnoPageState extends State<AnnoPage> {
  final AnnoBloc bloc = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ano 1')),
      //endDrawer: MyDrawer(),
      floatingActionButton: const MyFloatButton(),
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
          child: const Text(
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
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    ),
  );
}
