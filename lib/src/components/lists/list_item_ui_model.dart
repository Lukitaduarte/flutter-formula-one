import 'package:flutter/material.dart';

class ListItemUiModel {
  final String date;
  final String hour;
  final String title;
  final String country;
  final Widget imageCountry;

  ListItemUiModel({
    @required this.date,
    @required this.hour,
    @required this.title,
    @required this.country,
    @required this.imageCountry
  });
}