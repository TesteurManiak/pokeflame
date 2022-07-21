class GameDataStatus {
  final int id;
  final String name;

  /// Assets path to the animation.
  final String animation;

  final int iconPosition;

  GameDataStatus({
    required this.id,
    required this.name,
    required this.animation,
    this.iconPosition = 0,
  });

  final data = <String, dynamic>{};

  GameDataStatus copyWith({
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

  Future<void> load() async {
    // TODO: load the asset and populate the data map.
  }
}
