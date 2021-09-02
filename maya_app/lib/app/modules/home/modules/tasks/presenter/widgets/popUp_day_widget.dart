/*import 'package:flutter/material.dart';
import 'package:maya_app/app/core/repositories/day_store.dart';
import 'package:maya_app/app/core/widgets/my_button_widget.dart';
import 'package:maya_app/app/core/widgets/my_text_field_widget.dart';
import 'package:maya_app/app/modules/home/pages/day/models/items_card_day.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PopUpDay extends StatelessWidget {
  final TextEditingController _controllerTitulo = TextEditingController();
  final TextEditingController _controllerTarefa_1 = TextEditingController();
  final TextEditingController _controllerTarefa_2 = TextEditingController();
  final TextEditingController _controllerTarefa_3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55.w,
      height: 50.h,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Text(
              'Task',
              style: TextStyle(fontSize: 24.sp),
            ),
            MyTextField('Titulo', _controllerTitulo, TextInputType.name),
            MyTextField('Afazer 1', _controllerTarefa_1, TextInputType.name),
            MyTextField('Afazer 2', _controllerTarefa_2, TextInputType.name),
            MyTextField('Afazer 3', _controllerTarefa_3, TextInputType.name),
            Divider(),
            MyButton(
              title: 'Confirmar',
              width: 20.w,
              function: () {
                check(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void check(BuildContext context) {
    final String titulo = _controllerTitulo.text;
    final String afazer1 = _controllerTarefa_1.text;
    final String afazer2 = _controllerTarefa_2.text;
    final String afazer3 = _controllerTarefa_3.text;
    if (titulo != '' && afazer1 != '' && afazer2 != '' && afazer3 != '') {
      final FireStore _store = FireStore();

      final ItemsCardDay _card = ItemsCardDay(
        title: titulo,
        task1: afazer1,
        task2: afazer2,
        task3: afazer3,
      );

      _store.setCardDay(_card.toMap());

      //StoreProvider.of<AppState>(context).dispatch(UpdateCardDay());

      Navigator.pop(context);
    }
  }
}
*/