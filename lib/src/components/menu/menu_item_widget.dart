import 'package:flutter/material.dart';
import 'package:formula_one/src/components/menu/menu_item_ui_model.dart';

import '../../themes/colors.dart';

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({
    Key key,
    this.model,
  }) : super(key: key);

  final MenuItemUiModel model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: model.onPressed,
      child: Column(
        children: [
          SizedBox(
            height: 6,
          ),
          Icon(
            model.icon,
            color: FormulaPrimary,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            model.label,
            style: TextStyle(color: FormulaPrimary, fontSize: 10),
          ),
          SizedBox(
            height: 6,
          ),
        ],
      ),
    );
  }
}
