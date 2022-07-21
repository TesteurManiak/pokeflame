import 'package:pokeflame_core/pokeflame_core.dart';

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
  })  : assert(hpModifier >= 0.0),
        assert(atkModifier >= 0.0),
        assert(defModifier >= 0.0),
        assert(spdModifier >= 0.0),
        assert(spAtkModifier >= 0.0),
        assert(spDefModifier >= 0.0);

  double operator [](PokeStatIndex i) {
    switch (i) {
      case PokeStatIndex.hp:
        return hpModifier;
      case PokeStatIndex.attack:
        return atkModifier;
      case PokeStatIndex.defense:
        return defModifier;
      case PokeStatIndex.speed:
        return spdModifier;
      case PokeStatIndex.spAttack:
        return spAtkModifier;
      case PokeStatIndex.spDefense:
        return spDefModifier;
      case PokeStatIndex.accuracy:
      case PokeStatIndex.evasion:
        return 1.0;
    }
  }

  GameDataNature copyWith({
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
