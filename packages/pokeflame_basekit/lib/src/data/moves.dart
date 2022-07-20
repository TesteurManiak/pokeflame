import 'package:pokeflame_basekit/src/data/types.dart';
import 'package:pokeflame_core/pokeflame_core.dart';

class MovesKit {
  const MovesKit._();

  static const megahorn = GameDataMove(
    id: 1,
    name: 'Megahorn',
    type: TypesKit.bug,
    category: MoveCategory.physical,
    power: 120,
    accuracy: 85,
    totalPP: 10,
    target: MoveTarget.nearOther,
    flags: [
      MoveFlags.canMirrorMove,
      MoveFlags.canProtect,
      MoveFlags.canMirrorMove
    ],
    description:
        'Using its tough and impressive horn, the user rams into the target with no letup.',
  );
}
