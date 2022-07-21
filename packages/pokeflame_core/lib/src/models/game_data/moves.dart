import 'package:pokeflame_core/pokeflame_core.dart';

class GameDataMove extends GameData<GameDataMove> {
  final String name;
  final GameDataType type;
  final MoveCategory category;
  final int? power;
  final int? accuracy;
  final int totalPP;
  final MoveTarget target;
  final int priority;
  final Function? functionCode;
  final List<MoveFlags> flags;
  final int effectChance;
  final String description;

  const GameDataMove({
    required super.id,
    required this.name,
    required this.type,
    required this.category,
    this.power,
    this.accuracy,
    required this.totalPP,
    required this.target,
    this.priority = 0,
    this.functionCode,
    this.flags = const [],
    this.effectChance = 0,
    required this.description,
  });

  bool hasFlag(MoveFlags flag) => flags.contains(flag);

  bool get isPhysical {
    if (power == null || power == 0) return false;
    return category == MoveCategory.physical;
  }

  bool get isSpecial {
    if (power == null || power == 0) return false;
    return category == MoveCategory.special;
  }

  bool get isHiddenMove {
    // TODO: Implement this.
    return false;
  }

  @override
  GameDataMove copyWith({
    String? name,
    GameDataType? type,
    MoveCategory? category,
    int? power,
    int? accuracy,
    int? totalPP,
    MoveTarget? target,
    int? priority,
    Function? functionCode,
    List<MoveFlags>? flags,
    int? effectChance,
    String? description,
  }) {
    return GameDataMove(
      id: id,
      name: name ?? this.name,
      type: type ?? this.type,
      category: category ?? this.category,
      power: power ?? this.power,
      accuracy: accuracy ?? this.accuracy,
      totalPP: totalPP ?? this.totalPP,
      target: target ?? this.target,
      priority: priority ?? this.priority,
      functionCode: functionCode ?? this.functionCode,
      flags: flags ?? this.flags,
      effectChance: effectChance ?? this.effectChance,
      description: description ?? this.description,
    );
  }
}

enum MoveCategory { physical, special, status }

enum MoveTarget {
  nearAlly,
  nearOther,
  randomNearFoe,
  allNearOthers,
  allNearFoes,
  foeSide,
  user,
  other,
  bothSides,
  userAndAllies,
}

enum MoveFlags {
  contact,
  canProtect,
  canMirrorMove,
  highCriticalHitRate,
  sound,
  bomb,
  tramplesMinimize,
  powder,
  dance,
}
