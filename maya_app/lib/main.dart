import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:firebase_core/firebase_core.dart';

import 'app/core/app_module.dart';
import 'app/core/app_widget.dart';  

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ModularApp(
      module: AppModule(),
      child: AppWidget(),
    ),
  );
}
