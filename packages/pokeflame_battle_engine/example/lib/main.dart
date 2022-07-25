import 'package:example/widgets/name_level.dart';
import 'package:example/widgets/stats_layout.dart';
import 'package:flutter/material.dart';
import 'package:pokeflame_basekit/pokeflame_basekit.dart';
import 'package:pokeflame_core/pokeflame_core.dart';

final _movesKit = MovesKit(items: const ItemsKit().propsById);

void main() => runApp(const MyApp());

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
    final type2 = widget.pkmn1.type2;
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            NameLevel.fromPokemon(widget.pkmn1),
            StatsLayout.statsFromPokemon(widget.pkmn1),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: '\n', children: [
                    WidgetSpan(
                      child: Image.asset(
                        'assets/types/${widget.pkmn1.type1.id}.png',
                        height: 16,
                      ),
                    ),
                    if (type2 != null)
                      WidgetSpan(
                        child: Image.asset(
                          'assets/types/${type2.id}.png',
                          height: 16,
                        ),
                      ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
