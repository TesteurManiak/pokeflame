import 'package:pokeflame_core/pokeflame_core.dart';

class GameDataStat {
  final int id;
  final String name;
  final String shortName;
  final String type;

  /// Used when parsing a file to define the position of the stat.
  final PokeStatIndex pbsOrder;

  const GameDataStat({
    required this.id,
    required this.name,
    required this.shortName,
    required this.type,
    required this.pbsOrder,
  });
}
