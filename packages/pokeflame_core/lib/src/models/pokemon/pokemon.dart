import 'package:pokeflame_core/pokeflame_core.dart';

/// Instance of this class represents a single pokemon.
class Pokemon {
  /// The pokemon species.
  final GameDataPokemon _speciesData;

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
  late int _hp;

  GameDataStatus? _status;

  /// - For the sleep status, this is the number of rounds before waking up.
  /// - For the toxic status, 0 is regular poison, 1 is badly poisoned.
  int? statusCount;

  /// This Pokemon's shinyness.
  final bool shiny;

  /// Moves known by this Pokemon.
  final List<PokemonMove> moves;

  /// An array of ribbons owned by this Pokemon.
  final List<String> ribbons;

  final Map<PokeContestStatIndex, int> contestStats;

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

  final String? nickname;

  late int form;

  Pokemon({
    required GameDataPokemon speciesData,
    this.forcedForm,
    this.timeFormSet,
    this.exp = 0,
    this.stepsToHatch = 0,
    int? hp,
    GameDataStatus? status,
    this.statusCount,
    this.shiny = false,
    required this.moves,
    this.ribbons = const [],
    this.contestStats = const {},
    this.pokerus = 0,
    required this.happiness,
    required this.pokeBall,
    this.markings = const [],
    this.individualValues = const {},
    this.effortValues = const {},
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
    this.nickname,
  })  : _speciesData = speciesData,
        _status = status,
        assert(moves.isNotEmpty),
        assert(happiness >= 0 && happiness <= 255) {
    _hp = hp ?? totalHp;
    this.form = form ?? _speciesData.baseForm;
  }

  void playCry({int volume = 90, int pitch = 100}) =>
      _speciesData.playCryFromSpecies(
        form: form,
        volume: volume,
        pitch: pitch,
      );

  /// Return the HP calculated stat.
  int get totalHp {
    final iv = individualValues[PokeStatIndex.hp] ?? 0;
    final ev = effortValues[PokeStatIndex.hp] ?? 0;
    final base = _speciesData.stats[PokeStatIndex.hp]!;

    return (.01 * (2 * base + iv + (.25 * ev).floor()) * level).floor() +
        level +
        10;
  }

  /// Return the attack calculated stat.
  int get attack => _calculateStat(
        base: _speciesData.stats[PokeStatIndex.attack]!,
        stat: PokeStatIndex.attack,
      );

  /// Return the defense calculated stat.
  int get defense => _calculateStat(
        base: _speciesData.stats[PokeStatIndex.defense]!,
        stat: PokeStatIndex.defense,
      );

  /// Return the speed calculated stat.
  int get speed => _calculateStat(
        base: _speciesData.stats[PokeStatIndex.speed]!,
        stat: PokeStatIndex.speed,
      );

  /// Return the special attack calculated stat.
  int get specialAttack => _calculateStat(
        base: _speciesData.stats[PokeStatIndex.spAttack]!,
        stat: PokeStatIndex.spAttack,
      );

  /// Return the special defense calculated stat.
  int get specialDefense => _calculateStat(
        base: _speciesData.stats[PokeStatIndex.spDefense]!,
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
  GameDataGrowthRate get growthRate => _speciesData.growthRate;

  /// Return this Pokemon's base Expedition value.
  int get baseExp => _speciesData.baseExp;

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

  /// Sets the Pokemon's health.
  set hp(int value) {
    _hp = value.clamp(0, totalHp);
    if (hp == 0) {
      healStatus();
      readyToEvolve = false;
    }
  }

  /// This Pokemon's current status.
  GameDataStatus? get status => _status;

  /// Sets this Pokemon's status.
  set status(GameDataStatus? value) {
    if (!isAble()) return;
    final newStatus = value;
    if (newStatus == null) {
      throw ArgumentError('Attempted to set ${value?.name} as Pokemon status.');
    }
    _status = newStatus;
  }

  /// Return whether the Pokemon is not fainted and not an egg.
  bool isAble() => !isEgg && hp > 0;

  String get name => nickname ?? _speciesData.name;

  void healStatus() {
    if (isEgg) return;
    _status = null;
    statusCount = 0;
  }

  GameDataType get type1 => _speciesData.type1;
  GameDataType? get type2 => _speciesData.type2;
}

enum ObtainMethod { met, asEgg, traded, fatefulEncounter }
