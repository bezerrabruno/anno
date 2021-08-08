import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:maya_app/app/modules/home/pages/timer/timer_module.dart';

void main() {
  setUpAll(() {
    initModule(TimerModule());
  });
}
