import 'package:pokeflame_core/pokeflame_core.dart';

/// Instance of this class represents a single pokemon.
class Pokemon {
  /// The pokemon species.
  final String species;

  /// If defined, this Pokemon's form will be this value even if a MultipleForms
  /// handler tries to say otherwise.
  final int? forcedForm;

  /// If defined, is the time (in Integer form) when this Pokemon's form was
  /// set.
  final int? timeFormSet;

  /// Return the current experience point.
  final int exp;

  /// Return the current HP.
  final int hp;

  /// This Pokemon's current status.
  final GameDataStatus? status;

  /// - For the sleep status, this is the number of rounds before waking up.
  /// - For the toxic status, 0 is regular poison, 1 is badly poisoned.
  final int? statusCount;

  /// This Pokemon's shinyness.
  final bool shiny;

  /// Moves known by this Pokemon.
  final List<PokemonMove> moves;

  /// The IDs of moves known by this Pokemon when it was obtained.
  final List<int> firstMoves;

  /// An array of ribbons owned by this Pokemon.
  final List<String> ribbons;

  final int cool;
  final int beauty;
  final int cute;
  final int smart;
  final int tough;
  final int sheen;

  const Pokemon({
    required this.species,
    this.forcedForm,
    this.timeFormSet,
    this.exp = 0,
    required this.hp,
    this.status,
    this.statusCount,
    this.shiny = false,
    required this.moves,
    required this.firstMoves,
    this.ribbons = const [],
    this.cool = 0,
    this.beauty = 0,
    this.cute = 0,
    this.smart = 0,
    this.tough = 0,
    this.sheen = 0,
  }) : assert(moves.length > 0);
}
