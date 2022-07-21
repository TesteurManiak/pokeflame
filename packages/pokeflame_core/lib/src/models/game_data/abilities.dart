import 'package:pokeflame_core/src/models/game_data/game_data.dart';

class GameDataAbility extends GameData<GameDataAbility> {
  final String name;
  final String description;

  const GameDataAbility({
    required super.id,
    required this.name,
    required this.description,
  });

  @override
  GameDataAbility copyWith({String? name, String? description}) {
    return GameDataAbility(
      id: id,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }
}
