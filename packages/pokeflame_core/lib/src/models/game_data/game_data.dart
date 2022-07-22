import 'package:flutter/foundation.dart';
import 'package:pokeflame_core/pokeflame_core.dart';

@immutable
class GameData {
  final List<GameDataAbility> abilities;
  final GameDataConstants constants;
  final List<GameDataEggGroup> eggGroups;
  final List<GameDataItem> items;
  final List<GameDataMove> moves;
  final List<GameDataNature> natures;
  final List<GameDataPokemon> pokemon;

  const GameData({
    required this.abilities,
    required this.constants,
    required this.eggGroups,
    required this.items,
    required this.moves,
    required this.natures,
    required this.pokemon,
  })  : assert(abilities.length > 0),
        assert(eggGroups.length > 0),
        assert(items.length > 0),
        assert(moves.length > 0),
        assert(natures.length > 0),
        assert(pokemon.length > 0);

  /// Load assets for items, moves, and pokemon.
  Future<void> load() async {}
}

@immutable
abstract class DataProperty {
  final int id;

  const DataProperty({
    required this.id,
  });
}
