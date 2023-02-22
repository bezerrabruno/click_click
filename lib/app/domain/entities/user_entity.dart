import 'package:objectbox/objectbox.dart';

@Entity()
class UserEntity {
  /// Usuario
  int id = 0;
  String name;
  String age;

  /// Game
  int money;
  int levelClick;

  /// Metricas
  int clicks;

  UserEntity({
    required this.name,
    required this.age,
    required this.money,
    required this.levelClick,
    required this.clicks,
  });
}
