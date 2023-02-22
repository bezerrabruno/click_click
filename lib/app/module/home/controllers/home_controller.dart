import 'package:click_click/app/data/boxes/user_box.dart';
import 'package:click_click/app/domain/entities/user_entity.dart';
import 'package:click_click/app/module/home/stores/home_store.dart';

class HomeController {
  final HomeStore store;
  final UserBox box;

  HomeController(this.store, this.box) {
    getUser();
  }

  Future<void> getUser() async {
    final UserEntity? user = await box.get(1);

    if (user == null) {
      box.put(
        UserEntity(
          name: 'Tester',
          age: '+18',
          money: 0,
          levelClick: 0,
          clicks: 0,
        ),
      );

      getUser();
    } else {
      store.user = user;
      store.money = user.money;
    }
  }

  Future<void> click() async {
    store.user.clicks++;

    if (store.user.levelClick == 0) {
      store.money = store.money + 1;
    } else {
      store.money = store.money + (store.user.levelClick * 2);
    }

    store.user.money = store.money;

    box.put(store.user);
  }
}
