import 'package:flutter/material.dart';
import 'package:pokeflame_core/pokeflame_core.dart';

class StatsLayout extends StatelessWidget {
  final String hp;
  final String atk;
  final String def;
  final String spAtk;
  final String spDef;
  final String speed;

  const StatsLayout({
    Key? key,
    required this.hp,
    required this.atk,
    required this.def,
    required this.spAtk,
    required this.spDef,
    required this.speed,
  }) : super(key: key);

  StatsLayout.statsFromPokemon(Pokemon pkmn, {Key? key})
      : this(
          key: key,
          hp: '${pkmn.hp}/${pkmn.totalHp}',
          atk: pkmn.attack.toString(),
          def: pkmn.defense.toString(),
          spAtk: pkmn.specialAttack.toString(),
          spDef: pkmn.specialDefense.toString(),
          speed: pkmn.speed.toString(),
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          _StatTile(label: 'HP', value: hp),
          _StatTile(label: 'Attack', value: atk),
          _StatTile(label: 'Defense', value: def),
          _StatTile(label: 'Sp. Atk', value: spAtk),
          _StatTile(label: 'Sp. Def', value: spDef),
          _StatTile(label: 'Speed', value: speed),
        ],
      ),
    );
  }
}

class _StatTile extends StatelessWidget {
  final String label;
  final String value;

  const _StatTile({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 80.0,
          padding: const EdgeInsets.all(2),
          color: Colors.grey,
          child: Text(label, style: const TextStyle(color: Colors.white)),
        ),
        Container(
          padding: const EdgeInsets.all(2),
          color: Colors.white,
          child: Text(value, style: const TextStyle(color: Colors.black)),
        ),
      ],
    );
  }
}
