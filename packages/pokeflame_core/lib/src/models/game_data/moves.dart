import 'package:pokeflame_core/pokeflame_core.dart';

class GameDataMove extends DataProperty {
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

  final Map<int, GameDataItem> _items;

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
    required Map<int, GameDataItem> items,
  }) : _items = items;

  bool hasFlag(MoveFlags flag) => flags.contains(flag);

  bool get isPhysical {
    if (power == null || power == 0) return false;
    return category == MoveCategory.physical;
  }

  bool get isSpecial {
    if (power == null || power == 0) return false;
    return category == MoveCategory.special;
  }

  bool get isHiddenMove => _items[id]?.isHM ?? false;
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
