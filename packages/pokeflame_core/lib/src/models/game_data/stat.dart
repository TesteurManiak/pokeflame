import 'package:pokeflame_core/pokeflame_core.dart';

class GameDataStat extends GameData<GameDataStat> {
  final String name;
  final String shortName;
  final String type;
  final int pbsOrder;

  const GameDataStat({
    required super.id,
    required this.name,
    required this.shortName,
    required this.type,
    required this.pbsOrder,
  }) : assert(pbsOrder >= 0);

  @override
  GameData<GameDataStat> copyWith({
    String? name,
    String? shortName,
    String? type,
    int? pbsOrder,
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
