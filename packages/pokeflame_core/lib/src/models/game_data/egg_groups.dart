import 'package:pokeflame_core/pokeflame_core.dart';

class GameDataEggGroup extends GameData<GameDataEggGroup> {
  final String name;

  const GameDataEggGroup({
    required super.id,
    required this.name,
  });

  @override
  GameData<GameDataEggGroup> copyWith({String? name}) {
    return GameDataEggGroup(
      id: id,
      name: name ?? this.name,
    );
  }
}
