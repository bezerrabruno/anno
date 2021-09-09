import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '/app/core/widgets/my_appBar_widget.dart';
import '/app/core/widgets/my_buttomBar_widget.dart';

import 'bloc/change_page_home_bloc.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        titles: ['Tasks'],
        buttons: [Icons.calendar_today_outlined],
        actions: [() => print('Aro')],
        endDrawer: true,
        barBloc: Modular.get<ChangePageHomeBloc>(),
      ),
      //endDrawer: MyDrawer(),
      body: RouterOutlet(),
      bottomNavigationBar: MyButtomBar(
        barBloc: Modular.get<ChangePageHomeBloc>(),
      ),
    );
  }
}
