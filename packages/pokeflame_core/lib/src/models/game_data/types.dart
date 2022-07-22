class GameDataType {
  final int id;

  /// The name of the type.
  final String name;

  /// The key is an int representing the type id and the value the damage
  /// modifier when receiving an attack of this type.
  final Map<int, double> onHitTbl;

  const GameDataType({
    required this.id,
    required this.name,
    this.onHitTbl = const {},
  });
}
