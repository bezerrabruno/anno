import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MyFloatbutton extends StatelessWidget {
  final String? route;
  final Widget? popUp;

  MyFloatbutton({
    this.route,
    this.popUp,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (route != null) {
          Modular.to.pushNamed(route!);
        } else {
          showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  child: popUp,
                );
              });
        }
      },
      child: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 20,
                spreadRadius: 1,
              ),
            ]),
        child: Icon(
          Icons.add,
          color: Color.fromRGBO(12, 12, 77, 1),
          size: 36,
        ),
      ),
    );
  }
}
