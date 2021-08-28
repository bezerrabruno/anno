import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '/app/core/widgets/my_appBar_widget.dart';
import '/app/core/widgets/my_drawer_widget.dart';
import '/app/core/widgets/my_buttomBar_widget.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        titles: ['Day', 'Timer'],
      ),
      endDrawer: MyDrawer(),
      body: RouterOutlet(),
      bottomNavigationBar: MyButtomBar(),
      extendBody: true,
    );
  }
}
