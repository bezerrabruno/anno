import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyTextField extends StatelessWidget {
  final String title;
  final Function(String?) onSaved;
  final Function(String?)? onChanged;
  final TextInputType? keyBoardType;

  const MyTextField({
    Key? key,
    required this.title,
    required this.onSaved,
    this.onChanged,
    this.keyBoardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChanged,
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
