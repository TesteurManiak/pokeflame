import 'package:pokeflame_core/pokeflame_core.dart';

class GameDataItem extends GameData<GameDataItem> {
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
    required super.id,
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

  @override
  GameData<GameDataItem> copyWith({
    String? name,
    String? namePlurals,
    int? pocket,
    int? price,
    int? sellPrice,
    TargetUse? fieldUse,
    TargetUse? battleUse,
    bool? consumable,
    List<String>? flags,
    GameDataMove? move,
    String? description,
  }) {
    return GameDataItem(
      id: id,
      name: name ?? this.name,
      namePlurals: namePlurals ?? this.namePlurals,
      pocket: pocket ?? this.pocket,
      price: price ?? this.price,
      sellPrice: sellPrice ?? this.sellPrice,
      fieldUse: fieldUse ?? this.fieldUse,
      battleUse: battleUse ?? this.battleUse,
      consumable: consumable ?? this.consumable,
      flags: flags ?? this.flags,
      move: move ?? this.move,
      description: description ?? this.description,
    );
  }
}

enum TargetUse { direct, onPokemon }
