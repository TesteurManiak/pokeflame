import 'package:pokeflame_core/pokeflame_core.dart';
import 'package:pokeflame_core/src/data/egg_groups.dart';

class GameDataPokemon {
  /// The id of the pokemon, correspond to its pokedex number. (e.g. 1 for
  /// Bulbasaur)
  final int id;

  /// The id of the pokemon's alternative form. Default to 0.
  final int idBis;

  /// The name of the pokemon.
  final String name;

  final int form;

  /// Type 1 of the pokemon.
  final int type1;

  /// Type 2 of the pokemon. Is `null` if the pokemon doesn't have a type 2.
  final int? type2;

  final int baseHp;
  final int baseAtk;
  final int baseDef;
  final int baseSpd;
  final int baseSpAtk;
  final int baseSpDef;

  /// HP Effort value obtained when defeating this pokemon.
  final int evHp;

  /// Atk Effort value obtained when defeating this pokemon.
  final int evAtk;

  /// Def Effort value obtained when defeating this pokemon.
  final int evDef;

  /// Spd Effort value obtained when defeating this pokemon.
  final int evSpd;

  /// SpAtk Effort value obtained when defeating this pokemon.
  final int evSpAtk;

  /// SpDef Effort value obtained when defeating this pokemon.
  final int evSpDef;

  /// The abilities of the pokemon.
  final List<GameDataAbility> abilities;

  final String growthRate;
  final String genderRatio;
  final int baseExp;
  final int catchRate;
  final int happiness;
  final int eggSteps;

  /// Moves that can be learned through breeding.
  final List<GameDataMove> eggMoves;

  /// Moves learned when leveling.
  final Map<int, GameDataMove> moveset;

  /// Moves learned by TM/HM.
  final List<GameDataMove> tmList;

  final GameDataColor color;
  final GameDataHabitat habitat;
  final List<GameDataEggGroup> eggGroups;
  final double height;
  final double weight;

  const GameDataPokemon({
    required this.id,
    this.idBis = 0,
    required this.name,
    this.form = 0,
    required this.type1,
    this.type2,
    required this.baseHp,
    required this.baseAtk,
    required this.baseDef,
    required this.baseSpd,
    required this.baseSpAtk,
    required this.baseSpDef,
    this.evHp = 0,
    this.evAtk = 0,
    this.evDef = 0,
    this.evSpd = 0,
    this.evSpAtk = 0,
    this.evSpDef = 0,
    required this.abilities,
    required this.growthRate,
    required this.genderRatio,
    required this.baseExp,
    required this.catchRate,
    required this.happiness,
    required this.eggSteps,
    required this.eggMoves,
    required this.moveset,
    required this.tmList,
    required this.color,
    required this.habitat,
    required this.eggGroups,
    required this.height,
    required this.weight,
  }) : assert(type1 != type2, 'type1 and type2 must be different');
}
