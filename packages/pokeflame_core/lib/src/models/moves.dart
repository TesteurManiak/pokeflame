import 'package:pokeflame_core/pokeflame_core.dart';

class GameDataMove {
  final int id;
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
  final int? effectChance;
  final String description;

  const GameDataMove({
    required this.id,
    required this.name,
    required this.type,
    required this.category,
    this.power,
    this.accuracy,
    required this.totalPP,
    required this.target,
    this.priority = 1,
    this.functionCode,
    this.flags = const [],
    this.effectChance,
    required this.description,
  });
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
