class GameDataConstants {
  /// Max total IVs.
  final int ivStatLimit;

  /// Max total EVs.
  final int evLimit;

  /// Max EVs that a single stat can have.
  final int vStatLimit;

  /// Maximum length a Pokémon's nickname can be.
  final int maxNameSize;

  /// Maximum number of moves a Pokémon can know at once.
  final int maxMoves;

  /// The maximum amount of money the player can have.
  final int maxMoney;

  /// The maximum number of Game Corner coins the player can have.
  final int maxCoins;

  /// The maximum number of Battle Points the player can have.
  final int maxBattlePoints;

  /// The maximum amount of soot the player can have.
  final int maxSoot;

  /// The maximum length, in characters, that the player's name can be.
  final int maxPlayerNameSize;

  /// The maximum number of Pokémon that can be in the party.
  final int maxPartySize;

  /// The maximum level Pokémon can reach.
  final int maxLevel;

  /// The level of newly hatched Pokémon.
  final int eggLevel;

  /// The odds of a newly generated Pokémon being shiny (out of 65536).
  final int shinyChance;

  /// Whether super shininess is enabled (uses a different shiny animation).
  final bool superShiny;

  /// The odds of a wild Pokémon/bred egg having Pokérus (out of 65536).
  final int pokerusChance;

  const GameDataConstants._({
    this.ivStatLimit = 31,
    this.evLimit = 510,
    this.vStatLimit = 252,
    this.maxNameSize = 10,
    this.maxMoves = 4,
    this.maxMoney = 999999,
    this.maxCoins = 99999,
    this.maxBattlePoints = 9999,
    this.maxSoot = 9999,
    this.maxPlayerNameSize = 10,
    this.maxPartySize = 6,
    this.maxLevel = 100,
    this.eggLevel = 1,
    this.shinyChance = 16,
    this.superShiny = false,
    this.pokerusChance = 3,
  });

  static GameDataConstants _instance = const GameDataConstants._();
  static GameDataConstants get instance => _instance;

  static void setInstanceData({
    int? ivStatLimit,
    int? evLimit,
    int? vStatLimit,
    int? maxNameSize,
    int? maxMoves,
    int? maxMoney,
    int? maxCoins,
    int? maxBattlePoints,
    int? maxSoot,
    int? maxPlayerNameSize,
    int? maxPartySize,
    int? maxLevel,
    int? eggLevel,
    int? shinyChance,
    bool? superShiny,
    int? pokerusChance,
  }) {
    _instance = _instance._copyWith(
      ivStatLimit: ivStatLimit,
      evLimit: evLimit,
      vStatLimit: vStatLimit,
      maxNameSize: maxNameSize,
      maxMoves: maxMoves,
      maxMoney: maxMoney,
      maxCoins: maxCoins,
      maxBattlePoints: maxBattlePoints,
      maxSoot: maxSoot,
      maxPlayerNameSize: maxPlayerNameSize,
      maxPartySize: maxPartySize,
      maxLevel: maxLevel,
      eggLevel: eggLevel,
      shinyChance: shinyChance,
      superShiny: superShiny,
      pokerusChance: pokerusChance,
    );
  }

  GameDataConstants _copyWith({
    int? ivStatLimit,
    int? evLimit,
    int? vStatLimit,
    int? maxNameSize,
    int? maxMoves,
    int? maxMoney,
    int? maxCoins,
    int? maxBattlePoints,
    int? maxSoot,
    int? maxPlayerNameSize,
    int? maxPartySize,
    int? maxLevel,
    int? eggLevel,
    int? shinyChance,
    bool? superShiny,
    int? pokerusChance,
  }) {
    return GameDataConstants._(
      ivStatLimit: ivStatLimit ?? this.ivStatLimit,
      evLimit: evLimit ?? this.evLimit,
      vStatLimit: vStatLimit ?? this.vStatLimit,
      maxNameSize: maxNameSize ?? this.maxNameSize,
      maxMoves: maxMoves ?? this.maxMoves,
      maxMoney: maxMoney ?? this.maxMoney,
      maxCoins: maxCoins ?? this.maxCoins,
      maxBattlePoints: maxBattlePoints ?? this.maxBattlePoints,
      maxSoot: maxSoot ?? this.maxSoot,
      maxPlayerNameSize: maxPlayerNameSize ?? this.maxPlayerNameSize,
      maxPartySize: maxPartySize ?? this.maxPartySize,
      maxLevel: maxLevel ?? this.maxLevel,
      eggLevel: eggLevel ?? this.eggLevel,
      shinyChance: shinyChance ?? this.shinyChance,
      superShiny: superShiny ?? this.superShiny,
      pokerusChance: pokerusChance ?? this.pokerusChance,
    );
  }
}
