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
  final String flags;
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
    required this.flags,
    this.effectChance,
    required this.description,
  });
}

enum MoveCategory { physical, special, status }

enum MoveTarget { nearOther }
