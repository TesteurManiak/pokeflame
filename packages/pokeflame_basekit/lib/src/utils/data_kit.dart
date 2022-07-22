import 'package:flutter/material.dart';
import 'package:pokeflame_core/pokeflame_core.dart';

@immutable
abstract class DataKit<T extends DataProperty> {
  const DataKit();

  /// Returns a list of all properties.
  ///
  /// Default implementation returns an empty list to avoid boilerplate when
  /// relying on a static method.
  List<T> get props => [];

  /// Returns a Map of all [props] using the id as the key.
  Map<int, T> get propsById {
    final map = <int, T>{};
    for (final prop in props) {
      map[prop.id] = prop;
    }
    return map;
  }
}
