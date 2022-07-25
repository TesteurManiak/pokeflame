import 'package:pokeflame_basekit/pokeflame_basekit.dart';
import 'package:pokeflame_basekit/src/data/growth_rate.dart';
import 'package:pokeflame_core/pokeflame_core.dart';

class PokemonKit extends DataKit<GameDataPokemon> {
  const PokemonKit._();

  static final bulbasaur = GameDataPokemon(
    id: 1,
    name: 'Bulbasaur',
    type1: TypesKit.bug,
    type2: TypesKit.poison,
    stats: const {
      PokeStatIndex.hp: 45,
      PokeStatIndex.attack: 49,
      PokeStatIndex.defense: 49,
      PokeStatIndex.spAttack: 65,
      PokeStatIndex.spDefense: 65,
      PokeStatIndex.speed: 45,
    },
    effortValues: const {PokeStatIndex.spAttack: 1},
    abilities: const [],
    growthRate: GrowthRateKit.parabolic,
    genderRatio: 'FemaleOneEighth',
    baseExp: 64,
    catchRate: 45,
    happiness: 50,
    eggSteps: 5120,
    eggMoves: const [],
    moveset: const {},
    tmList: const [],
    color: 'Green',
    habitat: 'Grassland',
    eggGroups: const [EggGroupsKit.monster, EggGroupsKit.plant],
    height: 0.7,
    weight: 6.9,
    kind: 'Seed',
    description:
        "Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun's rays, the seed grows progressively larger.",
  );
}
