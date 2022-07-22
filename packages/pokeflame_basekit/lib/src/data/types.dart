import 'package:pokeflame_basekit/pokeflame_basekit.dart';
import 'package:pokeflame_core/pokeflame_core.dart';

class TypesKit extends DataKit<GameDataType> {
  const TypesKit._();

  static const bug = GameDataType(
    id: 1,
    name: 'Bug',
  );

  static List<GameDataType> get properties => [
        bug,
      ];
}
