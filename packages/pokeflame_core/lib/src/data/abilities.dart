class GameDataAbility {
  final int id;
  final String name;
  final String description;

  const GameDataAbility({
    required this.id,
    required this.name,
    required this.description,
  });

  static const chlorophyll = GameDataAbility(
    id: 34,
    name: 'Chlorophyll',
    description: "Harsh sunlight doubles this Pokémon's Speed stat.",
  );

  static const overgrow = GameDataAbility(
    id: 65,
    name: 'Overgrow',
    description: 'Boosts Grass-type moves when at a third or less HP.',
  );
}
