import 'package:pokeflame_core/pokeflame_core.dart';

class GameDataType extends GameData<GameDataType> {
  /// The name of the type.
  final String name;

  /// The key is an int representing the type id and the value the damage
  /// modifier when receiving an attack of this type.
  final Map<int, double> onHitTbl;

  const GameDataType({
    required super.id,
    required this.name,
    this.onHitTbl = const {},
  });

  @override
  GameData<GameDataType> copyWith({
    String? name,
    Map<int, double>? onHitTbl,
  }) {
    return GameDataType(
      id: id,
      name: name ?? this.name,
      onHitTbl: onHitTbl ?? this.onHitTbl,
    );
  }
}