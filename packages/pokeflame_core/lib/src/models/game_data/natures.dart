import 'package:pokeflame_core/pokeflame_core.dart';

class GameDataNature extends GameData<GameDataNature> {
  final double hpModifier;
  final double atkModifier;
  final double defModifier;
  final double spdModifier;
  final double spAtkModifier;
  final double spDefModifier;

  const GameDataNature({
    required super.id,
    this.hpModifier = 1.0,
    this.atkModifier = 1.0,
    this.defModifier = 1.0,
    this.spdModifier = 1.0,
    this.spAtkModifier = 1.0,
    this.spDefModifier = 1.0,
  });

  @override
  GameData<GameDataNature> copyWith({
    double? hpModifier,
    double? atkModifier,
    double? defModifier,
    double? spdModifier,
    double? spAtkModifier,
    double? spDefModifier,
  }) {
    return GameDataNature(
      id: id,
      hpModifier: hpModifier ?? this.hpModifier,
      atkModifier: atkModifier ?? this.atkModifier,
      defModifier: defModifier ?? this.defModifier,
      spdModifier: spdModifier ?? this.spdModifier,
      spAtkModifier: spAtkModifier ?? this.spAtkModifier,
      spDefModifier: spDefModifier ?? this.spDefModifier,
    );
  }
}