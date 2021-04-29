import 'package:flutter/material.dart';

import 'driver.dart';

class Team {
  final String name;
  final String description;
  final int position;
  final List<Driver> drivers;

  Team({
    @required this.name,
    @required this.description,
    @required this.position,
    @required this.drivers,
  });
}