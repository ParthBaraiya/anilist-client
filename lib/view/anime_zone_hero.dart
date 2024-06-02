import 'package:flutter/material.dart';

class AnimeZoneHero extends Hero {
  AnimeZoneHero({
    super.key,
    required Widget child,
    required super.tag,
  }) : super(
          child: Material(
            type: MaterialType.transparency,
            child: child,
          ),
        );
}
