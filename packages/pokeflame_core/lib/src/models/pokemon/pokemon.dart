import 'package:pokeflame_core/pokeflame_core.dart';

/// Instance of this class represents a single pokemon.
class Pokemon {
  /// The pokemon species.
  final GameDataPokemon speciesData;

  /// If defined, this Pokemon's form will be this value even if a MultipleForms
  /// handler tries to say otherwise.
  final int? forcedForm;

  /// If defined, is the time (in Integer form) when this Pokemon's form was
  /// set.
  final int? timeFormSet;

  /// The current experience point.
  int exp;

  /// The number of steps until this Pokémon hatches, 0 if this Pokémon is not
  /// an egg.
  final int stepsToHatch;

  /// Return the current HP.
  int _hp;

  /// This Pokemon's current status.
  GameDataStatus? status;

  /// - For the sleep status, this is the number of rounds before waking up.
  /// - For the toxic status, 0 is regular poison, 1 is badly poisoned.
  int? statusCount;

  /// This Pokemon's shinyness.
  final bool shiny;

  /// Moves known by this Pokemon.
  final List<PokemonMove> moves;

  /// The IDs of moves known by this Pokemon when it was obtained.
  final List<int> firstMoves;

  /// An array of ribbons owned by this Pokemon.
  final List<String> ribbons;

  final int cool;
  final int beauty;
  final int cute;
  final int smart;
  final int tough;
  final int sheen;

  /// The Pokerus strain and infection time.
  final int pokerus;

  /// This Pokemon's current happiness (between 0 and 255).
  final int happiness;

  /// ID of the pokeball item this Pokemon is in.
  final int pokeBall;

  /// This Pokemon's markings, one value per mark.
  final List<int> markings;

  /// IV values for each stat.
  final Map<PokeStatIndex, int> individualValues;

  /// A map of booleans indicating whether a stat is made to have maximum IVs
  /// (for Hyper Training).
  final Map<PokeStatIndex, bool> ivMaxed;

  /// This Pokemon's effort values. By default values starts at 0.
  final Map<PokeStatIndex, int> effortValues;

  /// This Pokemon's owner, if any.
  final String? owner;

  /// The manner this Pokemon was obtained.
  final ObtainMethod? obtainMethod;

  /// ID of the map this Pokemon was obtained in.
  final int? obtainMap;

  /// Describe the manner this Pokemon was obtained.
  ///
  /// If left undefined, the obtain map's name will be used.
  final String? obtainText;

  /// The level of this Pokemon when it was obtained.
  final int? obtainLevel;

  /// If this Pokemon hatched from an egg, corresponds to the map ID where
  /// the hatching happened.
  final int? hatchedMap;

  /// Another Pokemon which has been fused with this Pokemon (is null if there
  /// is none).
  ///
  /// Currently only used by Kyurem, to record a fused Reshiram or Zekrom.
  final Pokemon? fused;

  /// This Pokemon's personal ID.
  final int personalId;

  /// Used by Galarian Yamask to remember it took sufficient damage to from a
  /// battle and can evolve.
  bool readyToEvolve;

  /// Whether this Pokemon can be deposited in storage/Day Care.
  final bool cannotStore;

  /// Whether this Pokemon can be released.
  final bool cannotRelease;

  /// Whether this Pokemon can be traded.
  final bool cannotTrade;

  final GameDataNature nature;

  int form;

  Pokemon({
    required this.speciesData,
    this.forcedForm,
    this.timeFormSet,
    this.exp = 0,
    this.stepsToHatch = 0,
    required int hp,
    this.status,
    this.statusCount,
    this.shiny = false,
    required this.moves,
    required this.firstMoves,
    this.ribbons = const [],
    this.cool = 0,
    this.beauty = 0,
    this.cute = 0,
    this.smart = 0,
    this.tough = 0,
    this.sheen = 0,
    this.pokerus = 0,
    required this.happiness,
    required this.pokeBall,
    this.markings = const [],
    required this.individualValues,
    required this.ivMaxed,
    this.effortValues = const {
      PokeStatIndex.hp: 0,
      PokeStatIndex.attack: 0,
      PokeStatIndex.defense: 0,
      PokeStatIndex.speed: 0,
      PokeStatIndex.spAttack: 0,
      PokeStatIndex.spDefense: 0,
    },
    this.owner,
    this.obtainMethod,
    this.obtainMap,
    this.obtainText,
    this.obtainLevel,
    this.hatchedMap,
    this.fused,
    required this.personalId,
    this.readyToEvolve = false,
    this.cannotStore = false,
    this.cannotRelease = false,
    this.cannotTrade = false,
    required this.nature,
    int? form,
  })  : _hp = hp,
        form = form ?? speciesData.baseForm,
        assert(moves.isNotEmpty),
        assert(cool > 0),
        assert(beauty > 0),
        assert(cute > 0),
        assert(smart > 0),
        assert(tough > 0),
        assert(sheen > 0),
        assert(happiness >= 0 && happiness <= 255);

  /// Return the HP calculated stat.
  int get totalHp {
    final iv = individualValues[PokeStatIndex.hp] ?? 0;
    final ev = effortValues[PokeStatIndex.hp] ?? 0;
    final base = speciesData.stats[PokeStatIndex.hp]!;

    return (.01 * (2 * base + iv + (.25 * ev).floor()) * level).floor() +
        level +
        10;
  }

  /// Return the attack calculated stat.
  int get attack => _calculateStat(
        base: speciesData.stats[PokeStatIndex.attack]!,
        stat: PokeStatIndex.attack,
      );

  /// Return the defense calculated stat.
  int get defense => _calculateStat(
        base: speciesData.stats[PokeStatIndex.defense]!,
        stat: PokeStatIndex.defense,
      );

  /// Return the speed calculated stat.
  int get speed => _calculateStat(
        base: speciesData.stats[PokeStatIndex.speed]!,
        stat: PokeStatIndex.speed,
      );

  /// Return the special attack calculated stat.
  int get specialAttack => _calculateStat(
        base: speciesData.stats[PokeStatIndex.spAttack]!,
        stat: PokeStatIndex.spAttack,
      );

  /// Return the special defense calculated stat.
  int get specialDefense => _calculateStat(
        base: speciesData.stats[PokeStatIndex.spDefense]!,
        stat: PokeStatIndex.spDefense,
      );

  int _calculateStat({
    required int base,
    required PokeStatIndex stat,
  }) {
    final iv = individualValues[stat] ?? 0;
    final ev = effortValues[stat] ?? 0;
    final natureModifier = nature[stat];

    return (((.01 * (2 * base + iv + (.25 * ev).floor()) * level).floor() + 5) *
            natureModifier)
        .floor();
  }

  /// Return this Pokemon's level.
  int get level => growthRate.levelFromExp(exp);

  /// Sets this Pokemon's level.
  ///
  /// The given level must be between 1 and maximum level (defined in
  /// [GameDataGrowthRate]).
  set level(int value) {
    if (value < 1 || value > growthRate.maxLevel) {
      throw ArgumentError('The level number $value is invalid.');
    }
    exp = growthRate.minimumExpForLevel(value);
  }

  bool get isEgg => stepsToHatch > 0;

  /// Return this Pokemon's growth rate.
  GameDataGrowthRate get growthRate => speciesData.growthRate;

  /// Return this Pokemon's base Expedition value.
  int get baseExp => speciesData.baseExp;

  /// Return a number between 0 and 1 indicating how much of the current level's
  /// Exp this Pokemon has.
  double get expFraction {
    final lvl = level;
    if (lvl >= growthRate.maxLevel) {
      return 0.0;
    }
    final startExp = growthRate.minimumExpForLevel(lvl);
    final endExp = growthRate.minimumExpForLevel(lvl + 1);
    return (exp - startExp) / (endExp - startExp);
  }

  /// Return the current HP.
  int get hp => _hp;

  set hp(int value) {
    _hp = value.clamp(0, totalHp);
    if (hp == 0) {
      healStatus();
      readyToEvolve = false;
    }
  }

  void healStatus() {
    if (isEgg) return;
    status = null;
    statusCount = 0;
  }
}

enum ObtainMethod { met, asEgg, traded, fatefulEncounter }
