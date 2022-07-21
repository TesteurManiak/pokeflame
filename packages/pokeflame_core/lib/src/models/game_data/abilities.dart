class GameDataAbility {
  final int id;
  final String name;
  final String description;

  const GameDataAbility({
    required this.id,
    required this.name,
    required this.description,
  });

  GameDataAbility copyWith({String? name, String? description}) {
    return GameDataAbility(
      id: id,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }
}
