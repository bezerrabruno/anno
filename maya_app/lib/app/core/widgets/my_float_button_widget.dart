import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyFloatButton extends StatelessWidget {
  final Widget? popUp;

  MyFloatButton({
    this.popUp,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                child: popUp,
              );
            });
      },
      child: Material(
        elevation: 10,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(100),
        child: Container(
          height: 8.h,
          width: 15.w,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.add,
            color: Theme.of(context).backgroundColor,
            size: 36,
          ),
        ),
      ),
    );
  }
}
