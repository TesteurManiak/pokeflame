import 'package:pokeflame_core/pokeflame_core.dart';

class GameDataMove {
  final int id;
  final String name;
  final String description;
  final GameDataType type;
  final int? accuracy;
  final int? power;

  const GameDataMove({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
    this.accuracy,
    this.power,
  });
}
