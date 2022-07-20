class GameDataItem {
  /// The id of the item.
  final int id;

  /// The name of the item.
  final String name;

  /// Index of the pocket in which the item is stored.
  final int pocket;

  /// The price of the item.
  final int price;

  const GameDataItem({
    required this.id,
    required this.name,
    required this.pocket,
    required this.price,
  });
}
