import 'package:flutter/material.dart';

import '/app/modules/home/pages/day/models/items_card_day.dart';

class CardDay extends StatelessWidget {
  static String? taskAtual;

  final TextEditingController controllerChange = TextEditingController();

  final ItemsCardDay? items;

  CardDay({
    this.items,
  });

  get getTask => taskAtual;

  @override
  build(BuildContext context) {
    return Card(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /*
              _title(context),
              Divider(
                thickness: 2,
                color: Colors.black,
              ),
              _task(context, items?.task1),
              Divider(
                thickness: 2,
                color: Colors.black,
              ),
              _task(context, items?.task2),
              Divider(
                thickness: 2,
                color: Colors.black,
              ),
              _task(context, items?.task3),*/
            ],
          ),
        ));
  }

  /*Future _showPopUp(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return PopUpCardDay(
            titleIsTrue: true,
            items: items!,
            textEditingController: controllerChange,
          );
        });
  }

  Widget _title(BuildContext context) {
    return GestureDetector(
      onLongPress: () => _showPopUp(context),
      child: SizedBox(
        height: 6.h,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(
            items?.title ?? '',
            style: TextStyle(
              fontSize: 26.sp,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget _task(BuildContext context, String? title) {
    return GestureDetector(
      child: SizedBox(
        height: 50,
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text(
              title!,
              style: TextStyle(
                fontSize: 22.sp,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      onTap: () {
        title == items!.task1
            ? taskAtual = title
            : title == items!.task2
                ? taskAtual = title
                : taskAtual = title;
        Modular.to.pushNamed('task');
      },
      onLongPress: () {
        showDialog(
            context: context,
            builder: (context) {
              return PopUpCardDay(
                titleIsTrue: false,
                items: items!,
                task: title == items!.task1
                    ? 1
                    : title == items!.task2
                        ? 2
                        : 3,
                textEditingController: controllerChange,
              );
            });
      },
    );
  }*/
}
