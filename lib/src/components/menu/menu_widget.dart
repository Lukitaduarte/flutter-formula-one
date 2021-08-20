import 'package:flutter/material.dart';
import 'package:formula_one/src/components/menu/menu_item_widget.dart';

import 'menu_item_ui_model.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    Key key,
    this.items,
  }) : super(key: key);

  final List<MenuItemUiModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      separatorBuilder: (_, index) => const SizedBox(height: 24),
      itemBuilder: (_, index) => MenuItemWidget(
        key: ObjectKey(items[index]),
        model: items[index],
      ),
    );
  }
}
