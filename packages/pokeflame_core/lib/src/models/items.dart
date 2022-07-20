import 'package:pokeflame_core/pokeflame_core.dart';

class GameDataItem {
  /// The id of the item.
  final int id;

  /// The name of the item.
  final String name;

  final String namePlurals;

  /// Index of the pocket in which the item is stored.
  final int pocket;

  /// The price of the item.
  final int price;

  final int? sellPrice;
  final TargetUse? fieldUse;
  final TargetUse? battleUse;
  final bool? consumable;
  final List<String> flags;
  final GameDataMove? move;
  final String description;

  const GameDataItem({
    required this.id,
    required this.name,
    String? namePlurals,
    required this.pocket,
    required this.price,
    this.sellPrice,
    this.fieldUse,
    this.battleUse,
    this.consumable,
    required this.flags,
    this.move,
    required this.description,
  }) : namePlurals = namePlurals ?? name;
}

enum TargetUse { direct, onPokemon }
