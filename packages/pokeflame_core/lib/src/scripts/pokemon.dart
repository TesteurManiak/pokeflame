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

  Pokemon({
    required this.species,
    this.forcedForm,
    this.timeFormSet,
    this.exp = 0,
    required this.hp,
  });
}
