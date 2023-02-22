import 'package:click_click/app/module/home/controllers/home_controller.dart';
import 'package:click_click/app/module/home/pages/home_page.dart';
import 'package:click_click/app/module/home/stores/home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton<HomeStore>((i) => HomeStore()),
        Bind.lazySingleton<HomeController>((i) => HomeController(i(), i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
      ];
}
