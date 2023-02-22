import 'package:click_click/app/data/object_box.dart';
import 'package:click_click/app/data/objectbox.g.dart';
import 'package:click_click/app/domain/entities/user_entity.dart';

class UserBox {
  late final ObjectBox objectBox;
  Store? store;

  UserBox(this.objectBox);

  Future<UserEntity?> get(int id) async {
    final store = await objectBox.getStore();
    final box = store.box<UserEntity>();

    return box.get(id);
  }

  Future<void> put(UserEntity user) async {
    final store = await objectBox.getStore();
    final box = store.box<UserEntity>();
    await box.putAsync(user);
  }

  Future<void> remove(int id) async {
    final store = await objectBox.getStore();
    final box = store.box<UserEntity>();
    box.remove(id);
  }

  /// Limpa o Box
  Future<void> clear() async {
    final store = await objectBox.getStore();
    final login = store.box<UserEntity>();

    login.removeAll();
  }
}
