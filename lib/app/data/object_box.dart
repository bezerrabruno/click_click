import 'package:path_provider/path_provider.dart';

import 'objectbox.g.dart';

ObjectBox? appBox;

class ObjectBox {
  Store? store;

  Future<void> _initStore() async {
    final appDocDirectory = await getApplicationDocumentsDirectory();

    store = await openStore(directory: appDocDirectory.path);
  }

  Future<Store> getStore() async {
    if (store == null || store!.isClosed()) {
      await _initStore();
    }

    return store!;
  }
}
