import 'package:pokeflame_core/pokeflame_core.dart';
import 'package:pokeflame_core/src/models/poke_stats.dart';

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
  final GameDataType type1;

  /// Type 2 of the pokemon. Is `null` if the pokemon doesn't have one.
  final GameDataType? type2;

  /// Base stats of the pokemon.
  final Map<PokeStatIndex, int> stats;

  /// Effort values obtained after defeating this pokemon.
  final Map<PokeStatIndex, int> effortValues;

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

  /// Number of steps required to hatch the pokemon.
  final int eggSteps;

  /// Moves that can be learned through breeding.
  final List<GameDataMove> eggMoves;

  /// Moves learned when leveling.
  final Map<int, GameDataMove> moveset;

  /// Moves learned by TM/HM.
  final List<GameDataMove> tmList;

  final String color;
  final String habitat;
  final List<GameDataEggGroup> eggGroups;

  /// The pokemon's height in meters.
  final double height;

  /// The pokemon's weight in kilograms.
  final double weight;

  final String kind;

  /// Description of the pokemon displayed in the pokedex.
  final String description;

  final int battlerPlayerY;
  final int battlerEnemyY;
  final int battlerAltitude;
  final List<EvolutionNode> evolutions;

  const GameDataPokemon({
    required this.id,
    this.idBis = 0,
    required this.name,
    this.form = 0,
    required this.type1,
    this.type2,
    required this.stats,
    required this.effortValues,
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
    required this.kind,
    required this.description,
    required this.battlerPlayerY,
    required this.battlerEnemyY,
    required this.battlerAltitude,
    this.evolutions = const [],
  }) : assert(type1 != type2, 'type1 and type2 must be different');
}
