import 'package:click_click/app/domain/entities/user_entity.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreStoreBase with _$HomeStore;

abstract class HomeStoreStoreBase with Store {
  @observable
  int money = 0;

  UserEntity user =
      UserEntity(name: 'User', age: '0', money: -1, levelClick: 0, clicks: 0);
}
