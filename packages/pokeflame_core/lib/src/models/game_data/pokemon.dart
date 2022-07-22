import 'package:pokeflame_core/pokeflame_core.dart';

class GameDataPokemon extends DataProperty {
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
    required super.id,
    required this.name,
    this.form = 0,
    required this.type1,
    this.type2,
    required this.stats,
    this.effortValues = const {},
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
    this.battlerPlayerY = 0,
    this.battlerEnemyY = 0,
    this.battlerAltitude = 0,
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

  void playCryFromSpecies({int form = 0, int volume = 90, int pitch = 100}) {
    // TODO: Implement
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
