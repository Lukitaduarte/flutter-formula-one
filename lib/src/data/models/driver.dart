import 'package:flutter/material.dart';

import 'statistics.dart';
import 'team.dart';

class Driver {
  final int position;
  final String name;
  final String lastName;
  final String countryImageUrl;
  final Statistics statistics;
  final Team team;

  Driver({
    @required this.position,
    @required this.name,
    @required this.lastName,
    @required this.countryImageUrl,
    @required this.statistics,
    @required this.team,
  });
}