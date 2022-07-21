abstract class GameData<T extends GameData<T>> {
  final int id;

  const GameData({required this.id});

  GameData<T> copyWith();
}
