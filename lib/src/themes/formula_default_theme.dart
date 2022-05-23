import 'dart:ui';

import 'package:formula_one/src/themes/base_theme.dart';

class FormulaDefaultTheme implements BaseTheme {
  /// Colors tokens.
  @override
  Color highlight = const Color(0xFFE10600);

  @override
  Color highlightInverse = const Color(0xFF38383F);

  @override
  Color primary = const Color(0xFF15151E);

  @override
  Color primaryInverse = const Color(0xFFF3F3F3);

  @override
  Color secondary = const Color(0xFF000000);

  @override
  Color secondaryInverse = const Color(0xFFFFFFFF);
}