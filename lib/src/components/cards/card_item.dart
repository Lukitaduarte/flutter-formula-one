import 'package:flutter/material.dart';
import 'package:formula_one/src/components/cards/card_ui_model.dart';
import 'package:formula_one/src/screens/driver_detail_screen.dart';

import '../colors.dart';

class CardItem extends StatelessWidget {
  final CardUiModel uiModel;

  CardItem(this.uiModel);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: EdgeInsets.only(top: 12, bottom: 24),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: -10,
              blurRadius: 20,
              offset: Offset(0, 5), // changes position of shadow
            ),
          ]),
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  width: 150.0,
                  height: 100,
                  color: FormulaPrimary,
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Hero(
                      tag: uiModel.heroTag,
                      child: uiModel.imageDriver,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 150,
                    color: FormulaPrimaryDark,
                    padding: EdgeInsets.only(left: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment:
                      CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "Lewis",
                              style:
                              TextStyle(color: FormulaPrimary),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            uiModel.imageCountry
                          ],
                        ),
                        Text(
                          "Hamilton",
                          style: TextStyle(
                            color: FormulaPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => DriverDetailScreen(tag: uiModel.heroTag)
          ),
        );
      },
    );
  }
}
