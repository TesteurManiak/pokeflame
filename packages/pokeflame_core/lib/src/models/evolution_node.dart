import 'package:pokeflame_core/pokeflame_core.dart';

class EvolutionNode {
  final GameDataPokemon pokemon;
  final PBEvolution type;
  final int value;

  const EvolutionNode({
    required this.pokemon,
    required this.type,
    required this.value,
  });
}
