import 'package:pokeflame_core/pokeflame_core.dart';

class GameDataType extends DataProperty {
  /// The name of the type.
  final String name;

  /// The key is an int representing the type id and the value the damage
  /// modifier when receiving an attack of this type.
  ///
  /// A non mentionned type will have a damage modifier of
  /// [TypeModifier.normal].
  final Map<int, TypeModifier> onHitTbl;

  const GameDataType({
    required super.id,
    required this.name,
    this.onHitTbl = const {},
  });

  bool resistTo(GameDataType type) =>
      onHitTbl[type.id] == TypeModifier.resistance ||
      onHitTbl[type.id] == TypeModifier.doubleResistance;

  bool weakTo(GameDataType type) =>
      onHitTbl[type.id] == TypeModifier.weakness ||
      onHitTbl[type.id] == TypeModifier.doubleWeakness;
}

enum TypeModifier {
  weakness(2),
  doubleWeakness(4),
  resistance(0.5),
  doubleResistance(0.25),
  noEffect(0),
  normal(1);

  final double modifier;
  const TypeModifier(this.modifier);
}
