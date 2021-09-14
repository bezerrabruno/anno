import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40.w,
      height: 98.h,
      child: Drawer(
        child: Container(
          color: Theme.of(context).primaryColorDark,
          child: SafeArea(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.list_alt,
                    color: Theme.of(context).backgroundColor,
                  ),
                  title: Text(
                    'Routine',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  onTap: () => Modular.to.pushNamed('/home/days'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.filter_1,
                    color: Theme.of(context).backgroundColor,
                  ),
                  title: Text(
                    'ANNO',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  onTap: () => Modular.to.pushNamed('/anno'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Theme.of(context).backgroundColor,
                  ),
                  title: Text(
                    'Settings',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  onTap: () => true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
