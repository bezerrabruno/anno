import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String title;
  final TextInputType type;
  final TextEditingController controller;

  MyTextField(this.title, this.controller, this.type);

  @override
  Widget build(BuildContext context) {
    return TextField(
      minLines: 1,
      controller: controller,
      keyboardType: type,
      style: TextStyle(
        fontSize: 24.0,
        color: Colors.black,
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
