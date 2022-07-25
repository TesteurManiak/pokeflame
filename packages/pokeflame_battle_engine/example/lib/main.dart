import 'package:flutter/material.dart';
import 'package:pokeflame_basekit/pokeflame_basekit.dart';
import 'package:pokeflame_core/pokeflame_core.dart';

final _movesKit = MovesKit(items: const ItemsKit().propsById);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(
        pkmn1: Pokemon(
          speciesData: PokemonKit.bulbasaur,
          moves: [
            PokemonMove(
              move: _movesKit.megahorn,
              pp: _movesKit.megahorn.totalPP,
            ),
          ],
          happiness: 0,
          pokeBall: 1,
          personalId: 1,
          nature: NaturesKit.hardy,
        ),
        pkmn2: Pokemon(
          speciesData: PokemonKit.bulbasaur,
          moves: [
            PokemonMove(
              move: _movesKit.megahorn,
              pp: _movesKit.megahorn.totalPP,
            ),
          ],
          happiness: 0,
          pokeBall: 1,
          personalId: 1,
          nature: NaturesKit.hardy,
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final Pokemon pkmn1;
  final Pokemon pkmn2;

  const MyHomePage({
    Key? key,
    required this.pkmn1,
    required this.pkmn2,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(text: 'Name: ${widget.pkmn1.name}'),
              TextSpan(text: '\nLevel: ${widget.pkmn1.level}'),
              TextSpan(
                text: '\nHP: ${widget.pkmn1.hp}/${widget.pkmn1.totalHp}',
              ),
              TextSpan(text: '\nAtk: ${widget.pkmn1.attack}'),
              TextSpan(text: '\nDef: ${widget.pkmn1.defense}'),
              TextSpan(text: '\nSpd: ${widget.pkmn1.speed}'),
            ],
          ),
        ),
      ),
    );
  }
}
