class GameDataType {
  /// The id of the type.
  final int id;

  /// The name of the type.
  final String name;

  /// The key is an int representing the type id and the value the damage
  /// modifier when receiving an attack of this type.
  final Map<int, double> onHitTbl;

  final int textId;

  const GameDataType({
    required this.id,
    required this.name,
    this.onHitTbl = const {},
    required this.textId,
  });

  static const undefined = GameDataType(
    id: 0,
    name: 'undefined',
    onHitTbl: {
      0: 1.0,
      1: 1.0,
      2: 1.0,
      3: 1.0,
      4: 1.0,
      5: 1.0,
      6: 1.0,
      7: 1.0,
      8: 1.0,
      9: 1.0,
      10: 1.0,
      11: 1.0,
      12: 1.0,
      13: 1.0,
      14: 1.0,
      15: 1.0,
      16: 1.0,
      17: 1.0,
      18: 1.0,
    },
    textId: -1,
  );

  static const normal = GameDataType(
    id: 1,
    name: 'normal',
    onHitTbl: {
      0: 1.0,
      1: 1.0,
      2: 1.0,
      3: 1.0,
      4: 1.0,
      5: 1.0,
      6: 1.0,
      7: 2.0,
      8: 1.0,
      9: 1.0,
      10: 1.0,
      11: 1.0,
      12: 1.0,
      13: 1.0,
      14: 0.0,
      15: 1.0,
      16: 1.0,
      17: 1.0,
      18: 1.0,
    },
    textId: 0,
  );

  static const fire = GameDataType(
    id: 2,
    name: 'fire',
    onHitTbl: {
      0: 1.0,
      1: 1.0,
      2: 0.5,
      3: 2.0,
      4: 1.0,
      5: 0.5,
      6: 0.5,
      7: 1.0,
      8: 1.0,
      9: 2.0,
      10: 1.0,
      11: 1.0,
      12: 0.5,
      13: 2.0,
      14: 1.0,
      15: 1.0,
      16: 0.5,
      17: 1.0,
      18: 0.5,
    },
    textId: 9,
  );

  static const water = GameDataType(
    id: 3,
    name: 'water',
    onHitTbl: {
      0: 1.0,
      1: 1.0,
      2: 0.5,
      3: 0.5,
      4: 2.0,
      5: 2.0,
      6: 0.5,
      7: 1.0,
      8: 1.0,
      9: 1.0,
      10: 1.0,
      11: 1.0,
      12: 1.0,
      13: 1.0,
      14: 1.0,
      15: 1.0,
      16: 0.5,
      17: 1.0,
      18: 1.0,
    },
    textId: 10,
  );

  static const electric = GameDataType(
    id: 4,
    name: 'electric',
    onHitTbl: {
      0: 1.0,
      1: 1.0,
      2: 0.5,
      3: 0.5,
      4: 1.0,
      5: 1.0,
      6: 0.5,
      7: 1.0,
      8: 1.0,
      9: 1.0,
      10: 1.0,
      11: 1.0,
      12: 1.0,
      13: 1.0,
      14: 1.0,
      15: 1.0,
      16: 0.5,
      17: 1.0,
      18: 1.0,
    },
    textId: 12,
  );
}
