import 'package:pokeflame_basekit/src/data/types.dart';
import 'package:pokeflame_basekit/src/utils/data_kit.dart';
import 'package:pokeflame_core/pokeflame_core.dart';

class MovesKit extends DataKit<GameDataMove> {
  final Map<int, GameDataItem> _items;

  MovesKit({required Map<int, GameDataItem> items}) : _items = items;

  late final megahorn = GameDataMove(
    id: 1,
    name: 'Megahorn',
    type: TypesKit.bug,
    category: MoveCategory.physical,
    power: 120,
    accuracy: 85,
    totalPP: 10,
    target: MoveTarget.nearOther,
    flags: const [
      MoveFlags.canMirrorMove,
      MoveFlags.canProtect,
    ],
    description:
        'Using its tough and impressive horn, the user rams into the target with no letup.',
    items: _items,
  );

  @override
  List<GameDataMove> get props => [
        megahorn,
      ];
}
