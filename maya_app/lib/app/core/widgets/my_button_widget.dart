import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyButton extends StatelessWidget {
  final String title;
  final double? height;
  final double? width;
  final Color? color;
  final TextStyle? textStyle;
  final Function()? function;

  const MyButton({
    Key? key,
    required this.title,
    this.height,
    this.width,
    this.color,
    this.textStyle,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      color: color ?? Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(24),
      child: InkWell(
        onTap: function ?? () => true,
        borderRadius: BorderRadius.circular(24),
        child: SizedBox(
          height: height ?? 4.5.h,
          width: width ?? 100.w,
          child: Center(
            child: Text(
              title,
              style: textStyle ?? Theme.of(context).textTheme.button,
            ),
          ),
        ),
      ),
    );
  }
}
