import 'package:flutter/material.dart';

class MenuItemUiModel {
  final IconData icon;
  final String label;
  final GestureTapCallback onPressed;

  MenuItemUiModel({
    @required this.icon,
    @required this.label,
    @required this.onPressed,
  });
}