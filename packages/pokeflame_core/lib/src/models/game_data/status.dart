import 'package:pokeflame_core/pokeflame_core.dart';

class GameDataStatus extends GameData<GameDataStatus> {
  final String name;
  final String animation;
  final int iconPosition;

  const GameDataStatus({
    required super.id,
    required this.name,
    required this.animation,
    this.iconPosition = 0,
  });

  @override
  GameData<GameDataStatus> copyWith({
    String? name,
    String? animation,
    int? iconPosition,
  }) {
    return GameDataStatus(
      id: id,
      name: name ?? this.name,
      animation: animation ?? this.animation,
      iconPosition: iconPosition ?? this.iconPosition,
    );
  }
}
