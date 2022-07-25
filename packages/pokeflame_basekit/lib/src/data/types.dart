import 'package:pokeflame_basekit/pokeflame_basekit.dart';
import 'package:pokeflame_core/pokeflame_core.dart';

class TypesKit extends DataKit<GameDataType> {
  const TypesKit._();

  static const normal = GameDataType(
    id: 0,
    name: 'Normal',
    onHitTbl: {1: TypeModifier.weakness, 7: TypeModifier.noEffect},
  );

  static const fighting = GameDataType(
    id: 1,
    name: 'Fighting',
    onHitTbl: {
      2: TypeModifier.weakness,
      5: TypeModifier.resistance,
      6: TypeModifier.resistance,
      12: TypeModifier.resistance,
      14: TypeModifier.weakness,
      18: TypeModifier.weakness,
    },
  );

  static const flying = GameDataType(
    id: 2,
    name: 'Flying',
    onHitTbl: {
      1: TypeModifier.resistance,
      5: TypeModifier.weakness,
      6: TypeModifier.resistance,
      12: TypeModifier.resistance,
      13: TypeModifier.weakness,
      15: TypeModifier.weakness,
    },
  );

  static const poison = GameDataType(
    id: 3,
    name: 'Poison',
    onHitTbl: {
      1: TypeModifier.resistance,
      3: TypeModifier.resistance,
      4: TypeModifier.weakness,
      6: TypeModifier.resistance,
      12: TypeModifier.resistance,
      14: TypeModifier.weakness,
      18: TypeModifier.resistance,
    },
  );

  static const ground = GameDataType(
    id: 4,
    name: 'Ground',
    onHitTbl: {
      11: TypeModifier.weakness,
    },
  );

  static const bug = GameDataType(
    id: 6,
    name: 'Bug',
  );

  static List<GameDataType> get properties => [
        normal,
        fighting,
        flying,
        poison,
        ground,
        bug,
      ];

  @override
  List<GameDataType> get props => properties;
}
