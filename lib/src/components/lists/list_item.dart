import 'package:flutter/material.dart';
import 'package:formula_one/src/components/lists/list_item_ui_model.dart';

import '../colors.dart';

class ListItem extends StatelessWidget {
  final ListItemUiModel uiModel;

  ListItem(this.uiModel);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
            ),
            child: Container(
              color: FormulaGray,
              padding: EdgeInsets.all(12),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(uiModel.date),
                        Text(uiModel.hour),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              uiModel.country,
                              style: TextStyle(color: FormulaAccent),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            uiModel.imageCountry
                          ],
                        ),
                        Text(
                          uiModel.title,
                          style: TextStyle(
                            color: FormulaPrimaryDark,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 12,
        ),
      ],
    );
  }
}