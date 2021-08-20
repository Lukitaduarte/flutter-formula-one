import 'package:flutter/cupertino.dart';

class CardUiModel {
  final String heroTag;
  final Widget imageDriver;
  final Widget imageCountry;
  final String name;
  final String lastName;

  CardUiModel({
    required this.heroTag,
    required this.imageDriver,
    required this.imageCountry,
    required this.name,
    required this.lastName
  });
}
