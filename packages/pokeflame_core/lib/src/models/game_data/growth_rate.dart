import 'dart:math' as math;

import 'package:pokeflame_core/pokeflame_core.dart';

typedef ExpFormulaCallback = int Function(int level);

class GameDataGrowthRate extends DataProperty {
  final String name;
  final List<int> expValues;
  final ExpFormulaCallback? expFormula;
  final GameDataConstants _constants;

  const GameDataGrowthRate({
    required super.id,
    required this.name,
    required this.expValues,
    this.expFormula,
    required GameDataConstants constants,
  }) : _constants = constants;

  /// Return the maximum level a Pokemon can attains according to
  /// [GameDataConstants].
  int get maxLevel => _constants.maxLevel;

  /// Return the minimum Exp needed to be at the given level.
  int minimumExpForLevel(int level) {
    if (level <= 1) throw ArgumentError('Level $level is invalid.');
    final minLevel = math.min(level, maxLevel);
    if (minLevel < expValues.length) return expValues[minLevel];

    if (expFormula == null) {
      throw Exception('No Exp formula is defined for growth rate $name');
    }
    return expFormula!.call(level);
  }

  /// Return the maximum Exp a Pokemon with this growth rate can have.
  int get maximumExp => minimumExpForLevel(maxLevel);

  /// Return the sum of the two given Exp amounts.
  int addExp({
    required int exp1,
    required int exp2,
  }) =>
      (exp1 + exp2).clamp(0, maximumExp);

  /// Return the level of a Pokemon that has the given Exp amount.
  int levelFromExp(int exp) {
    if (exp < 0) throw ArgumentError('Exp amount $exp is invalid.');
    final max = maxLevel;
    if (exp >= maximumExp) return max;
    for (int level = 1; level <= max; level++) {
      if (exp < minimumExpForLevel(level)) return level - 1;
    }
    return max;
  }
}
