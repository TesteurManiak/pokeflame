class GameDataEggGroup {
  final int id;
  final String name;

  const GameDataEggGroup({
    required this.id,
    required this.name,
  });

  GameDataEggGroup copyWith({String? name}) {
    return GameDataEggGroup(
      id: id,
      name: name ?? this.name,
    );
  }
}
