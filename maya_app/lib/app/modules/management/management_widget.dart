import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '/app/core/widgets/my_drawer_widget.dart';
import 'widgets/management_buttom_bar_widget.dart';

import 'bloc/change_page/change_page_bloc.dart';

class ManagementWidget extends StatelessWidget {
  final ChangePageBloc barBloc;

  const ManagementWidget({
    Key? key,
    required this.barBloc,
  }) : super(key: key);

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
      bottomNavigationBar: ManagementButtomBar(
        barBloc: barBloc,
      ),
      extendBody: true,
    );
  }
}
