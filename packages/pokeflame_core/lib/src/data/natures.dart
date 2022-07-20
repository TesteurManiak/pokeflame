class GameDataNature {
  final int id;
  final double hpModifier;
  final double atkModifier;
  final double defModifier;
  final double spdModifier;
  final double spAtkModifier;
  final double spDefModifier;

  const GameDataNature({
    required this.id,
    this.hpModifier = 1.0,
    this.atkModifier = 1.0,
    this.defModifier = 1.0,
    this.spdModifier = 1.0,
    this.spAtkModifier = 1.0,
    this.spDefModifier = 1.0,
  });
}
