class GameDataMove {
  final int id;
  final String name;
  final String description;
  final int? accuracy;
  final int? power;

  const GameDataMove({
    required this.id,
    required this.name,
    required this.description,
    this.accuracy,
    this.power,
  });
}
