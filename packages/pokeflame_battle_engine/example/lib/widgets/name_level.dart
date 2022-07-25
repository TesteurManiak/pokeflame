import 'package:flutter/material.dart';
import 'package:pokeflame_core/pokeflame_core.dart';

const _kBorderRadius = Radius.circular(6);
const _kContentPadding = EdgeInsets.symmetric(vertical: 2, horizontal: 4);

class NameLevel extends StatelessWidget {
  final String name;
  final int level;
  final bool hasPkrus;
  final int? status;

  const NameLevel({
    Key? key,
    required this.name,
    required this.level,
    this.hasPkrus = false,
    this.status,
  }) : super(key: key);

  NameLevel.fromPokemon(Pokemon pkmn, {Key? key})
      : this(
          key: key,
          name: pkmn.name,
          level: pkmn.level,
          hasPkrus: pkmn.pokerus > 0,
          status: pkmn.status?.id,
        );

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: const BorderRadius.horizontal(right: _kBorderRadius),
      clipBehavior: Clip.antiAlias,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: _kContentPadding,
            color: Colors.black,
            child: Text(name, style: const TextStyle(color: Colors.white)),
          ),
          Container(
            padding: _kContentPadding,
            color: Colors.white,
            child: Text.rich(
              TextSpan(
                text: 'Lv.',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
                children: [
                  TextSpan(
                    text: level.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                    children: [
                      if (status != null) ...[
                        const WidgetSpan(child: SizedBox(width: 4)),
                        WidgetSpan(
                          child: Image.asset('assets/status/$status.png'),
                        ),
                      ]
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
