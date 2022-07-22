import 'package:pokeflame_basekit/src/utils/data_kit.dart';
import 'package:pokeflame_core/pokeflame_core.dart';

class EggGroupsKit extends DataKit<GameDataEggGroup> {
  const EggGroupsKit._();

  static const monster = GameDataEggGroup(id: 1, name: 'Monster');
  static const water1 = GameDataEggGroup(id: 2, name: 'Water 1');
  static const bug = GameDataEggGroup(id: 3, name: 'Bug');
  static const flying = GameDataEggGroup(id: 4, name: 'Flying');
  static const ground = GameDataEggGroup(id: 5, name: 'Field');
  static const fairy = GameDataEggGroup(id: 6, name: 'Fairy');
  static const plant = GameDataEggGroup(id: 7, name: 'Grass');
  static const humanshape = GameDataEggGroup(id: 8, name: 'Human-Like');
  static const water3 = GameDataEggGroup(id: 9, name: 'Water 3');
  static const mineral = GameDataEggGroup(id: 10, name: 'Mineral');
  static const indeterminate = GameDataEggGroup(id: 11, name: 'Amorphous');
  static const water2 = GameDataEggGroup(id: 12, name: 'Water 2');
  static const ditto = GameDataEggGroup(id: 13, name: 'Ditto');
  static const dragon = GameDataEggGroup(id: 14, name: 'Dragon');
  static const noEggs = GameDataEggGroup(id: 15, name: 'Undiscovered');

  static List<GameDataEggGroup> get properties => [
        monster,
        water1,
        bug,
        flying,
        ground,
        fairy,
        plant,
        humanshape,
        water3,
        mineral,
        indeterminate,
        water2,
        ditto,
        dragon,
        noEggs,
      ];

  @override
  List<GameDataEggGroup> get props => properties;
}
