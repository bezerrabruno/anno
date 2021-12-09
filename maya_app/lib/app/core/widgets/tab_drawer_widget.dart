import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TabDrawer extends StatelessWidget {
  const TabDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 41.w,
      height: 100.h,
      child: Drawer(
        child: Container(
          color: Theme.of(context).colorScheme.primary,
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
                  onTap: () => Modular.to.pushNamed('/routine/tasks/'),
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
                  onTap: () => Modular.to.pushNamed('/anno/'),
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
