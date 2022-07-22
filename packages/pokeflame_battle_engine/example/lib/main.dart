import 'package:flutter/material.dart';
import 'package:pokeflame_basekit/pokeflame_basekit.dart';
import 'package:pokeflame_core/pokeflame_core.dart';

const _constants = GameDataConstants();
final _movesKit = MovesKit(items: const ItemsKit().propsById);
final _pkmnKit = PokemonKit(constants: _constants);

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
          speciesData: _pkmnKit.bulbasaur,
          hp: _pkmnKit.bulbasaur.stats[PokeStatIndex.hp]!,
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
          speciesData: _pkmnKit.bulbasaur,
          hp: _pkmnKit.bulbasaur.stats[PokeStatIndex.hp]!,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
    );
  }
}
