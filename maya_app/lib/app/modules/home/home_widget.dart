import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '/app/core/widgets/my_drawer_widget.dart';
import 'widgets/home_buttom_bar_widget.dart';

import 'bloc/change_page_home_bloc.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const MyDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/app/assets/images/test1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: RouterOutlet(),
      ),
      bottomNavigationBar: HomeButtomBar(
        barBloc: Modular.get<ChangePageHomeBloc>(),
      ),
      extendBody: true,
    );
  }
}
