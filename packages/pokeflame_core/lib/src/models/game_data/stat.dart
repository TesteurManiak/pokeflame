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

  GameDataStat copyWith({
    String? name,
    String? shortName,
    String? type,
    PokeStatIndex? pbsOrder,
  }) {
    return GameDataStat(
      id: id,
      name: name ?? this.name,
      shortName: shortName ?? this.shortName,
      type: type ?? this.type,
      pbsOrder: pbsOrder ?? this.pbsOrder,
    );
  }
}
