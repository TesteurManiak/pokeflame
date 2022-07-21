import 'package:pokeflame_core/pokeflame_core.dart';

class PokemonMove {
  final GameDataMove move;

  /// The amount of PP remaining for this move.
  late final int pp;

  /// The number of PP Ups used on this move (each one adds 20% to the total
  /// PP).
  final int ppUp;

  PokemonMove({
    required this.move,
    required int pp,
    this.ppUp = 0,
  }) : assert(ppUp >= 0) {
    this.pp = pp.clamp(0, totalPP);
  }

  int get totalPP => move.totalPP + (move.totalPP * ppUp ~/ 5);
  Function? get functionCode => move.functionCode;
  int? get baseDamage => move.power;
  GameDataType get type => move.type;
  MoveCategory get category => move.category;
  int? get accuracy => move.accuracy;
  int get priority => move.priority;
  List<MoveFlags> get flags => move.flags;
  String get name => move.name;
  String get description => move.description;
  bool get isHiddenMove => move.isHiddenMove;

  PokemonMove copyWith({
    GameDataMove? move,
    int? pp,
    int? ppUp,
  }) {
    return PokemonMove(
      move: move ?? this.move,
      pp: pp ?? this.pp,
      ppUp: ppUp ?? this.ppUp,
    );
  }
}
