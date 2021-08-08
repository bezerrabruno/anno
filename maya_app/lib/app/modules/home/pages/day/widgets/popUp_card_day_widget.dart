/*import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../models/items_card_day.dart';

class PopUpCardDay extends StatelessWidget {
  final bool titleIsTrue;
  final ItemsCardDay items;

  final int? task;
  final TextEditingController textEditingController;

  PopUpCardDay({
    required this.titleIsTrue,
    required this.items,
    this.task,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return titleIsTrue
        ? Dialog(
            child: SizedBox(
              height: 18.h,
              child: Column(
                children: [
                  Text(
                    'Delete',
                    style: TextStyle(fontSize: 24.sp),
                  ),
                  Text(
                    'Dejesa deletar o card Atual',
                    style: TextStyle(fontSize: 20.sp),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      /*MyButton(
                        title: 'Yes',
                        width: 13.w,
                        function: () => _ontap(context, true, true),
                      ),
                      MyButton(
                        title: 'No',
                        width: 13.w,
                        function: () => _ontap(context, true, false),
                      ),*/
                    ],
                  ),
                ],
              ),
            ),
          )
        : Dialog(
            child: SizedBox(
              height: 24.h,
              child: Column(
                children: [
                  Text(
                    'Editor',
                    style: TextStyle(fontSize: 24.sp),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: MyTextField(
                        'New Task', textEditingController, TextInputType.name),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Divider(),
                  MyButton(
                    title: 'Confirmar',
                    width: 22.w,
                    function: () => _ontap(context, false, false),
                  ),
                ],
              ),
            ),
          );
  }

  /*void _update(BuildContext context) {
    _dao.update(items, items.id!);
    StoreProvider.of<AppState>(context).dispatch(UpdateCardDay());
  }

  void _delet(BuildContext context) {
    _dao.remove(items.id!);
    StoreProvider.of<AppState>(context).dispatch(UpdateCardDay());
  }*/

  _ontap(BuildContext context, bool titleIsTrue, bool tap) {
    {
      if (titleIsTrue) {
        if (tap) {
          //_delet(context);
          Modular.to.pop(context);
        } else {
          Modular.to.pop(context);
        }
      } else {
        if (textEditingController.text != '') {
          if (task == 1) {
            items.task1 = textEditingController.text;
          } else if (task == 2) {
            items.task2 = textEditingController.text;
          } else if (task == 3) {
            items.task3 = textEditingController.text;
          }

          //_update(context);
          textEditingController.text = '';
          Navigator.pop(context);
        }
      }
    }
  }
}*/
