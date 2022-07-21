class GameDataConstants {
  final int ivStatLimit;
  final int evLimit;
  final int vStatLimit;
  final int maxNameSize;
  final int maxMoves;

  const GameDataConstants({
    this.ivStatLimit = 31,
    this.evLimit = 510,
    this.vStatLimit = 252,
    this.maxNameSize = 10,
    this.maxMoves = 4,
  });

  GameDataConstants copyWith({
    int? ivStatLimit,
    int? evLimit,
    int? vStatLimit,
    int? maxNameSize,
    int? maxMoves,
  }) {
    return GameDataConstants(
      ivStatLimit: ivStatLimit ?? this.ivStatLimit,
      evLimit: evLimit ?? this.evLimit,
      vStatLimit: vStatLimit ?? this.vStatLimit,
      maxNameSize: maxNameSize ?? this.maxNameSize,
      maxMoves: maxMoves ?? this.maxMoves,
    );
  }
}
