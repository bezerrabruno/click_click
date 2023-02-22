import 'package:click_click/app/data/boxes/user_box.dart';
import 'package:click_click/app/data/object_box.dart';
import 'package:click_click/app/module/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => UserBox(appBox!)),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
      ];
}
