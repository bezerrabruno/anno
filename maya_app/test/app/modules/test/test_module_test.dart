import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:maya_app/app/modules/test/test_module.dart';

void main() {
  setUpAll(() {
    initModule(TestModule());
  });
}
