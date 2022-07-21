import 'package:pokeflame_core/pokeflame_core.dart';

class GameDataPokemon {
  final int id;

  /// The name of the pokemon.
  final String name;

  /// The index of this form of that Pokémon
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

  final GameDataGrowthRate growthRate;
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

  final List<String> flags;

  /// Description of the pokemon displayed in the pokedex.
  final String description;

  final int battlerPlayerY;
  final int battlerEnemyY;
  final int battlerAltitude;
  final List<EvolutionNode> evolutions;

  const GameDataPokemon({
    required this.id,
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
    this.flags = const [],
    required this.description,
    required this.battlerPlayerY,
    required this.battlerEnemyY,
    required this.battlerAltitude,
    this.evolutions = const [],
  }) : assert(type1 != type2, 'type1 and type2 must be different');

  int get defaultForm {
    for (final flag in flags) {
      if (flag.contains(
        RegExp(r'/^DefaultForm_(\d+)$/i', caseSensitive: false),
      )) {
        return 1;
      }
    }
    return -1;
  }

  int get baseForm => defaultForm >= 0 ? defaultForm : form;

  int get baseStatTotal => stats.values.reduce((a, b) => a + b);

  bool hasFlag(String flag) => flags.contains(flag);

  GameDataPokemon copyWith({
    String? name,
    int? form,
    GameDataType? type1,
    GameDataType? type2,
    Map<PokeStatIndex, int>? stats,
    Map<PokeStatIndex, int>? effortValues,
    int? evHp,
    int? evAtk,
    int? evDef,
    int? evSpd,
    int? evSpAtk,
    int? evSpDef,
    List<GameDataAbility>? abilities,
    GameDataGrowthRate? growthRate,
    String? genderRatio,
    int? baseExp,
    int? catchRate,
    int? happiness,
    int? eggSteps,
    List<GameDataMove>? eggMoves,
    Map<int, GameDataMove>? moveset,
    List<GameDataMove>? tmList,
    String? color,
    String? habitat,
    List<GameDataEggGroup>? eggGroups,
    double? height,
    double? weight,
    String? kind,
    String? description,
    int? battlerPlayerY,
    int? battlerEnemyY,
    int? battlerAltitude,
    List<EvolutionNode>? evolutions,
  }) {
    return GameDataPokemon(
      id: id,
      name: name ?? this.name,
      form: form ?? this.form,
      type1: type1 ?? this.type1,
      type2: type2 ?? this.type2,
      stats: stats ?? this.stats,
      effortValues: effortValues ?? this.effortValues,
      evHp: evHp ?? this.evHp,
      evAtk: evAtk ?? this.evAtk,
      evDef: evDef ?? this.evDef,
      evSpd: evSpd ?? this.evSpd,
      evSpAtk: evSpAtk ?? this.evSpAtk,
      evSpDef: evSpDef ?? this.evSpDef,
      abilities: abilities ?? this.abilities,
      growthRate: growthRate ?? this.growthRate,
      genderRatio: genderRatio ?? this.genderRatio,
      baseExp: baseExp ?? this.baseExp,
      catchRate: catchRate ?? this.catchRate,
      happiness: happiness ?? this.happiness,
      eggSteps: eggSteps ?? this.eggSteps,
      eggMoves: eggMoves ?? this.eggMoves,
      moveset: moveset ?? this.moveset,
      tmList: tmList ?? this.tmList,
      color: color ?? this.color,
      habitat: habitat ?? this.habitat,
      eggGroups: eggGroups ?? this.eggGroups,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      kind: kind ?? this.kind,
      description: description ?? this.description,
      battlerPlayerY: battlerPlayerY ?? this.battlerPlayerY,
      battlerEnemyY: battlerEnemyY ?? this.battlerEnemyY,
      battlerAltitude: battlerAltitude ?? this.battlerAltitude,
      evolutions: evolutions ?? this.evolutions,
    );
  }
}

class EvolutionNode {
  final GameDataPokemon pokemon;
  final PBEvolution type;
  final int value;

  const EvolutionNode({
    required this.pokemon,
    required this.type,
    required this.value,
  });
}
