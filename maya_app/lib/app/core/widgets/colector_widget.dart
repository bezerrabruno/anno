import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Colector extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final TextInputType? keyBoardType;

  const Colector({
    Key? key,
    required this.title,
    required this.controller,
    this.keyBoardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyBoardType,
      style: TextStyle(
        fontSize: 22.sp,
        color: Theme.of(context).primaryColorDark,
      ),
      decoration: InputDecoration(
        labelText: title,
        labelStyle: TextStyle(
          color: Theme.of(context).primaryColorDark,
        ),
      ),
    );
  }
}
