import 'package:pokeflame_basekit/pokeflame_basekit.dart';
import 'package:pokeflame_core/pokeflame_core.dart';

class NaturesKit extends DataKit<GameDataNature> {
  const NaturesKit._();

  static const hardy = GameDataNature(id: 0, name: 'Hardy');
  static const lonely = GameDataNature(
    id: 1,
    name: 'Lonely',
    atkModifier: 1.1,
    defModifier: 0.9,
    favoriteFlavor: NatureFlavor.spicy,
    dislikedFlavor: NatureFlavor.sour,
  );
  static const brave = GameDataNature(
    id: 2,
    name: 'Brave',
    atkModifier: 1.1,
    spdModifier: .9,
    favoriteFlavor: NatureFlavor.spicy,
    dislikedFlavor: NatureFlavor.sweet,
  );
  static const adamant = GameDataNature(
    id: 3,
    name: 'Adamant',
    atkModifier: 1.1,
    spAtkModifier: .9,
    favoriteFlavor: NatureFlavor.spicy,
    dislikedFlavor: NatureFlavor.dry,
  );
  static const naughty = GameDataNature(
    id: 4,
    name: 'Naughty',
    atkModifier: 1.1,
    spDefModifier: .9,
    favoriteFlavor: NatureFlavor.spicy,
    dislikedFlavor: NatureFlavor.bitter,
  );
  static const bold = GameDataNature(
    id: 5,
    name: 'Bold',
    defModifier: 1.1,
    atkModifier: .9,
    favoriteFlavor: NatureFlavor.sour,
    dislikedFlavor: NatureFlavor.spicy,
  );
  static const docile = GameDataNature(id: 6, name: 'Docile');
  static const relaxed = GameDataNature(
    id: 7,
    name: 'Relaxed',
    defModifier: 1.1,
    spdModifier: .9,
    favoriteFlavor: NatureFlavor.sour,
    dislikedFlavor: NatureFlavor.sweet,
  );
  static const impish = GameDataNature(
    id: 8,
    name: 'Impish',
    defModifier: 1.1,
    spAtkModifier: .9,
    favoriteFlavor: NatureFlavor.sour,
    dislikedFlavor: NatureFlavor.dry,
  );
  static const lax = GameDataNature(
    id: 9,
    name: 'Lax',
    defModifier: 1.1,
    spDefModifier: .9,
    favoriteFlavor: NatureFlavor.sour,
    dislikedFlavor: NatureFlavor.bitter,
  );
  static const timid = GameDataNature(
    id: 10,
    name: 'Timid',
    spdModifier: 1.1,
    atkModifier: .9,
    favoriteFlavor: NatureFlavor.sweet,
    dislikedFlavor: NatureFlavor.spicy,
  );
  static const hasty = GameDataNature(
    id: 11,
    name: 'Hasty',
    spdModifier: 1.1,
    defModifier: .9,
    favoriteFlavor: NatureFlavor.sweet,
    dislikedFlavor: NatureFlavor.sour,
  );
  static const serious = GameDataNature(id: 12, name: 'Serious');
  static const jolly = GameDataNature(
    id: 13,
    name: 'Jolly',
    spdModifier: 1.1,
    spAtkModifier: .9,
    favoriteFlavor: NatureFlavor.sweet,
    dislikedFlavor: NatureFlavor.dry,
  );
  static const naive = GameDataNature(
    id: 14,
    name: 'Naive',
    spdModifier: 1.1,
    spDefModifier: .9,
    favoriteFlavor: NatureFlavor.sweet,
    dislikedFlavor: NatureFlavor.bitter,
  );

  static List<GameDataNature> get properties => [
        hardy,
        lonely,
        brave,
        adamant,
        naughty,
        bold,
        docile,
        relaxed,
        impish,
        lax,
        timid,
        hasty,
        serious,
        jolly,
        naive,
      ];

  @override
  List<GameDataNature> get props => properties;
}
