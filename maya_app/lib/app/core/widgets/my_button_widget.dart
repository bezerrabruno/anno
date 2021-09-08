import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyButton extends StatelessWidget {
  final String title;
  final double? width;
  final Color? color;
  final Color? textColor;
  final Function() function;

  MyButton({
    required this.title,
    this.width,
    this.color,
    this.textColor,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      color: color ?? Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(6),
      child: InkWell(
        enableFeedback: true,
        onTap: function,
        child: SizedBox(
          height: 4.5.h,
          width: width ?? 100.w,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: textColor ?? Theme.of(context).backgroundColor,
                fontSize: 16.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
