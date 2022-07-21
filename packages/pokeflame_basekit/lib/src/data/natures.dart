import 'package:pokeflame_core/pokeflame_core.dart';

class NaturesKit {
  const NaturesKit._();

  static const hardy = GameDataNature(id: 1);
  static const lonely = GameDataNature(
    id: 2,
    atkModifier: 1.1,
    defModifier: 0.9,
    favoriteFlavor: NatureFlavor.spicy,
    dislikedFlavor: NatureFlavor.sour,
  );
  static const brave = GameDataNature(
    id: 3,
    atkModifier: 1.1,
    spdModifier: .9,
    favoriteFlavor: NatureFlavor.spicy,
    dislikedFlavor: NatureFlavor.sweet,
  );
  static const adamant = GameDataNature(
    id: 4,
    atkModifier: 1.1,
    spAtkModifier: .9,
    favoriteFlavor: NatureFlavor.spicy,
    dislikedFlavor: NatureFlavor.dry,
  );
  static const naughty = GameDataNature(
    id: 5,
    atkModifier: 1.1,
    spDefModifier: .9,
    favoriteFlavor: NatureFlavor.spicy,
    dislikedFlavor: NatureFlavor.bitter,
  );
  static const bold = GameDataNature(
    id: 6,
    defModifier: 1.1,
    atkModifier: .9,
    favoriteFlavor: NatureFlavor.sour,
    dislikedFlavor: NatureFlavor.spicy,
  );
}
