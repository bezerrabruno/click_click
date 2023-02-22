import 'package:click_click/app/app_module.dart';
import 'package:click_click/app/app_widget.dart';
import 'package:click_click/app/data/object_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  appBox = ObjectBox();

  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
