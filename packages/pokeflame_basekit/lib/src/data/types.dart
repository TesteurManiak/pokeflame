import 'package:pokeflame_basekit/pokeflame_basekit.dart';
import 'package:pokeflame_core/pokeflame_core.dart';

enum Type {
  normal,
  fighting,
  flying,
  poison,
  ground,
  rock,
  bug,
  ghost,
  steel,
  questionMark,
  fire,
  water,
  grass,
  electric,
  psychic,
  ice,
  dragon,
  dark,
  fairy,
}

class TypesKit extends DataKit<GameDataType> {
  const TypesKit._();

  static final normal = GameDataType(
    id: Type.normal.index,
    name: 'Normal',
    onHitTbl: {
      Type.fighting.index: TypeModifier.weakness,
      Type.ghost.index: TypeModifier.noEffect,
    },
  );

  static final fighting = GameDataType(
    id: Type.fighting.index,
    name: 'Fighting',
    onHitTbl: {
      Type.flying.index: TypeModifier.weakness,
      Type.psychic.index: TypeModifier.weakness,
      Type.fairy.index: TypeModifier.weakness,
      Type.rock.index: TypeModifier.resistance,
      Type.bug.index: TypeModifier.resistance,
      Type.grass.index: TypeModifier.resistance,
    },
  );

  static final flying = GameDataType(
    id: Type.flying.index,
    name: 'Flying',
    onHitTbl: {
      Type.rock.index: TypeModifier.weakness,
      Type.electric.index: TypeModifier.weakness,
      Type.ice.index: TypeModifier.weakness,
      Type.fighting.index: TypeModifier.resistance,
      Type.bug.index: TypeModifier.resistance,
      Type.grass.index: TypeModifier.resistance,
    },
  );

  static final poison = GameDataType(
    id: Type.poison.index,
    name: 'Poison',
    onHitTbl: {
      Type.ground.index: TypeModifier.weakness,
      Type.psychic.index: TypeModifier.weakness,
      Type.fighting.index: TypeModifier.resistance,
      Type.poison.index: TypeModifier.resistance,
      Type.bug.index: TypeModifier.resistance,
      Type.grass.index: TypeModifier.resistance,
      Type.fairy.index: TypeModifier.resistance,
    },
  );

  static final ground = GameDataType(
    id: Type.ground.index,
    name: 'Ground',
    onHitTbl: {
      Type.water.index: TypeModifier.weakness,
      Type.grass.index: TypeModifier.weakness,
      Type.ice.index: TypeModifier.weakness,
      Type.poison.index: TypeModifier.resistance,
      Type.rock.index: TypeModifier.resistance,
      Type.electric.index: TypeModifier.noEffect,
    },
  );

  static final rock = GameDataType(
    id: Type.rock.index,
    name: 'Rock',
    onHitTbl: {
      Type.fighting.index: TypeModifier.weakness,
      Type.ground.index: TypeModifier.weakness,
      Type.steel.index: TypeModifier.weakness,
      Type.water.index: TypeModifier.weakness,
      Type.grass.index: TypeModifier.weakness,
      Type.normal.index: TypeModifier.resistance,
      Type.flying.index: TypeModifier.resistance,
      Type.poison.index: TypeModifier.resistance,
      Type.fire.index: TypeModifier.resistance,
    },
  );

  static final bug = GameDataType(
    id: Type.bug.index,
    name: 'Bug',
    onHitTbl: {
      Type.flying.index: TypeModifier.weakness,
      Type.rock.index: TypeModifier.weakness,
      Type.fire.index: TypeModifier.weakness,
      Type.fighting.index: TypeModifier.resistance,
      Type.ground.index: TypeModifier.resistance,
      Type.grass.index: TypeModifier.resistance,
    },
  );

  static final ghost = GameDataType(
    id: Type.ghost.index,
    name: 'Ghost',
    onHitTbl: {
      Type.ghost.index: TypeModifier.weakness,
      Type.dark.index: TypeModifier.weakness,
      Type.poison.index: TypeModifier.resistance,
      Type.bug.index: TypeModifier.resistance,
      Type.normal.index: TypeModifier.noEffect,
    },
  );

  static final steel = GameDataType(
    id: Type.steel.index,
    name: 'Steel',
    onHitTbl: {
      Type.fighting.index: TypeModifier.weakness,
      Type.ground.index: TypeModifier.weakness,
      Type.fire.index: TypeModifier.weakness,
      Type.normal.index: TypeModifier.resistance,
      Type.flying.index: TypeModifier.resistance,
      Type.rock.index: TypeModifier.resistance,
      Type.bug.index: TypeModifier.resistance,
      Type.steel.index: TypeModifier.resistance,
      Type.grass.index: TypeModifier.resistance,
      Type.psychic.index: TypeModifier.resistance,
      Type.ice.index: TypeModifier.resistance,
      Type.dragon.index: TypeModifier.resistance,
      Type.fairy.index: TypeModifier.resistance,
      Type.poison.index: TypeModifier.noEffect,
    },
  );

  static final questionMark = GameDataType(
    id: Type.questionMark.index,
    name: 'Question Mark',
  );

  static final fire = GameDataType(
    id: Type.fire.index,
    name: 'Fire',
    onHitTbl: {
      Type.ground.index: TypeModifier.weakness,
      Type.rock.index: TypeModifier.weakness,
      Type.water.index: TypeModifier.weakness,
      Type.bug.index: TypeModifier.resistance,
      Type.steel.index: TypeModifier.resistance,
      Type.fire.index: TypeModifier.resistance,
      Type.grass.index: TypeModifier.resistance,
      Type.ice.index: TypeModifier.resistance,
      Type.fairy.index: TypeModifier.resistance,
    },
  );

  static final water = GameDataType(
    id: Type.water.index,
    name: 'Water',
    onHitTbl: {
      Type.grass.index: TypeModifier.weakness,
      Type.electric.index: TypeModifier.weakness,
      Type.steel.index: TypeModifier.resistance,
      Type.fire.index: TypeModifier.resistance,
      Type.water.index: TypeModifier.resistance,
      Type.ice.index: TypeModifier.resistance,
    },
  );

  static final grass = GameDataType(
    id: Type.grass.index,
    name: 'Grass',
    onHitTbl: {
      Type.flying.index: TypeModifier.weakness,
      Type.poison.index: TypeModifier.weakness,
      Type.bug.index: TypeModifier.weakness,
      Type.fire.index: TypeModifier.weakness,
      Type.ice.index: TypeModifier.weakness,
      Type.ground.index: TypeModifier.resistance,
      Type.water.index: TypeModifier.resistance,
      Type.grass.index: TypeModifier.resistance,
      Type.electric.index: TypeModifier.resistance,
    },
  );

  static final electric = GameDataType(
    id: Type.electric.index,
    name: 'Electric',
    onHitTbl: {
      Type.ground.index: TypeModifier.weakness,
      Type.flying.index: TypeModifier.resistance,
      Type.steel.index: TypeModifier.resistance,
      Type.electric.index: TypeModifier.resistance,
    },
  );

  static final psychic = GameDataType(
    id: Type.psychic.index,
    name: 'Psychic',
    onHitTbl: {
      Type.bug.index: TypeModifier.weakness,
      Type.ghost.index: TypeModifier.weakness,
      Type.dark.index: TypeModifier.weakness,
      Type.fighting.index: TypeModifier.resistance,
      Type.psychic.index: TypeModifier.resistance,
    },
  );

  static final ice = GameDataType(
    id: Type.ice.index,
    name: 'Ice',
    onHitTbl: {
      Type.fighting.index: TypeModifier.weakness,
      Type.rock.index: TypeModifier.weakness,
      Type.steel.index: TypeModifier.weakness,
      Type.fire.index: TypeModifier.weakness,
      Type.ice.index: TypeModifier.resistance,
    },
  );

  static final dragon = GameDataType(
    id: Type.dragon.index,
    name: 'Dragon',
    onHitTbl: {
      Type.ice.index: TypeModifier.weakness,
      Type.dragon.index: TypeModifier.weakness,
      Type.fairy.index: TypeModifier.weakness,
      Type.fire.index: TypeModifier.resistance,
      Type.water.index: TypeModifier.resistance,
      Type.grass.index: TypeModifier.resistance,
      Type.electric.index: TypeModifier.resistance,
    },
  );

  static final dark = GameDataType(
    id: Type.dark.index,
    name: 'Dark',
    onHitTbl: {
      Type.fighting.index: TypeModifier.weakness,
      Type.bug.index: TypeModifier.weakness,
      Type.fairy.index: TypeModifier.weakness,
      Type.ghost.index: TypeModifier.resistance,
      Type.dark.index: TypeModifier.resistance,
      Type.psychic.index: TypeModifier.noEffect,
    },
  );

  static final fairy = GameDataType(
    id: Type.fairy.index,
    name: 'Fairy',
    onHitTbl: {
      Type.poison.index: TypeModifier.weakness,
      Type.steel.index: TypeModifier.weakness,
      Type.fighting.index: TypeModifier.resistance,
      Type.bug.index: TypeModifier.resistance,
      Type.dark.index: TypeModifier.resistance,
      Type.dragon.index: TypeModifier.noEffect,
    },
  );

  static List<GameDataType> get properties => [
        normal,
        fighting,
        flying,
        poison,
        ground,
        rock,
        bug,
        ghost,
        steel,
        questionMark,
        fire,
        water,
        grass,
        electric,
        psychic,
        ice,
        dragon,
        dark,
        fairy,
      ];

  @override
  List<GameDataType> get props => properties;
}
