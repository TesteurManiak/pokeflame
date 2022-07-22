import 'package:flutter/material.dart';
import 'package:pokeflame_core/pokeflame_core.dart';

@immutable
abstract class DataKit<T extends DataProperty> {
  const DataKit();

  List<T> get props;
  Map<int, T> get propsById {
    final map = <int, T>{};
    for (final prop in props) {
      map[prop.id] = prop;
    }
    return map;
  }
}
