import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyFloatButton extends StatelessWidget {
  final Widget? popUp;

  const MyFloatButton({
    Key? key,
    this.popUp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      color: Theme.of(context).primaryColorLight,
      borderRadius: BorderRadius.circular(100),
      child: InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  child: popUp,
                );
              });
        },
        borderRadius: BorderRadius.circular(100),
        child: SizedBox(
          height: 55,
          width: 55,
          child: Icon(
            Icons.add,
            color: Theme.of(context).backgroundColor,
            size: 26.sp,
          ),
        ),
      ),
    );
  }
}
