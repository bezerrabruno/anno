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
    return GestureDetector(
      onTap: function,
      child: Container(
        height: 4.5.h,
        width: width ?? 100.w,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: color ?? Color.fromRGBO(12, 12, 77, 1),
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 15,
                  offset: Offset.fromDirection(1, 10)),
            ]),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: 16.sp,
            ),
          ),
        ),
      ),
    );
  }
}
