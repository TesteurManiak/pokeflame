import 'package:pokeflame_core/pokeflame_core.dart';

class GameDataType {
  /// The id of the type.
  final PBTypes id;

  /// The name of the type.
  final String name;

  /// The key is an int representing the type id and the value the damage
  /// modifier when receiving an attack of this type.
  final Map<PBTypes, double> onHitTbl;

  const GameDataType({
    required this.id,
    required this.name,
    this.onHitTbl = const {},
  });

  static const normal = GameDataType(
    id: PBTypes.normal,
    name: 'Normal',
    onHitTbl: {
      PBTypes.normal: 1.0,
      PBTypes.fire: 1.0,
      PBTypes.water: 1.0,
      PBTypes.electric: 1.0,
      PBTypes.grass: 1.0,
      PBTypes.ice: 1.0,
      PBTypes.fighting: 2.0,
      PBTypes.poison: 1.0,
      PBTypes.ground: 1.0,
      PBTypes.flying: 1.0,
      PBTypes.psychic: 1.0,
      PBTypes.bug: 1.0,
      PBTypes.rock: 1.0,
      PBTypes.ghost: .0,
      PBTypes.dragon: 1.0,
      PBTypes.dark: 1.0,
      PBTypes.steel: 1.0,
      PBTypes.fairy: 1.0,
    },
  );

  static const fire = GameDataType(
    id: PBTypes.fire,
    name: 'Fire',
    onHitTbl: {
      PBTypes.normal: 1.0,
      PBTypes.fire: .5,
      PBTypes.water: 2.0,
      PBTypes.electric: 1.0,
      PBTypes.grass: .5,
      PBTypes.ice: .5,
      PBTypes.fighting: 1.0,
      PBTypes.poison: 1.0,
      PBTypes.ground: 2.0,
      PBTypes.flying: 1.0,
      PBTypes.psychic: 1.0,
      PBTypes.bug: .5,
      PBTypes.rock: 2.0,
      PBTypes.ghost: 1.0,
      PBTypes.dragon: 1.0,
      PBTypes.dark: 1.0,
      PBTypes.steel: .5,
      PBTypes.fairy: .5,
    },
  );

  static const water = GameDataType(
    id: PBTypes.water,
    name: 'Water',
    onHitTbl: {
      PBTypes.normal: 1.0,
      PBTypes.fire: .5,
      PBTypes.water: .5,
      PBTypes.electric: 2.0,
      PBTypes.grass: 2.0,
      PBTypes.ice: .5,
      PBTypes.fighting: 1.0,
      PBTypes.poison: 1.0,
      PBTypes.ground: 1.0,
      PBTypes.flying: 1.0,
      PBTypes.psychic: 1.0,
      PBTypes.bug: 1.0,
      PBTypes.rock: 1.0,
      PBTypes.ghost: 1.0,
      PBTypes.dragon: 1.0,
      PBTypes.dark: 1.0,
      PBTypes.steel: .5,
      PBTypes.fairy: 1.0,
    },
  );

  static const electric = GameDataType(
    id: PBTypes.electric,
    name: 'Electric',
    onHitTbl: {
      PBTypes.normal: 1.0,
      PBTypes.fire: 1.0,
      PBTypes.water: 1.0,
      PBTypes.electric: .5,
      PBTypes.grass: 1.0,
      PBTypes.ice: 1.0,
      PBTypes.fighting: 1.0,
      PBTypes.poison: 1.0,
      PBTypes.ground: 2.0,
      PBTypes.flying: .5,
      PBTypes.psychic: 1.0,
      PBTypes.bug: 1.0,
      PBTypes.rock: 1.0,
      PBTypes.ghost: 1.0,
      PBTypes.dragon: 1.0,
      PBTypes.dark: 1.0,
      PBTypes.steel: .5,
      PBTypes.fairy: 1.0,
    },
  );

  static const grass = GameDataType(
    id: PBTypes.grass,
    name: 'Grass',
    onHitTbl: {
      PBTypes.normal: 1.0,
      PBTypes.fire: 2.0,
      PBTypes.water: .5,
      PBTypes.electric: .5,
      PBTypes.grass: .5,
      PBTypes.ice: 2.0,
      PBTypes.fighting: 1.0,
      PBTypes.poison: 2.0,
      PBTypes.ground: .5,
      PBTypes.flying: 2.0,
      PBTypes.psychic: 1.0,
      PBTypes.bug: 2.0,
      PBTypes.rock: 1.0,
      PBTypes.ghost: 1.0,
      PBTypes.dragon: 1.0,
      PBTypes.dark: 1.0,
      PBTypes.steel: 1.0,
      PBTypes.fairy: 1.0,
    },
  );
}
