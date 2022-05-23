import 'package:flutter/material.dart';
import 'package:formula_one/src/components/cards/card_item.dart';
import 'package:formula_one/src/components/cards/card_ui_model.dart';
import 'package:formula_one/src/components/scaffold/fast_scaffold.dart';
import 'package:formula_one/src/components/lists/list_item.dart';
import 'package:formula_one/src/components/lists/list_item_ui_model.dart';

class HomeScreen extends StatelessWidget {

  Widget _buildNextRace() {
    final ListItemUiModel uiModel = ListItemUiModel(
        date: "31/07",
        hour: "10:00h",
        title: "FORMULA 1 PIRELLI BRITISH GRAND PRIX 2020",
        country: "Grã-Bretanha",
        imageCountry: Image.asset('assets/images/countries/uk.png', width: 20));

    return Column(
      children: <Widget>[
        Container(
          color: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Próximas Corridas",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        ListItem(uiModel),
        SizedBox(
          height: 12,
        ),
        ListItem(uiModel),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }

  Widget _buildHorizontalList(String title) {
    return LimitedBox(
      maxHeight: 250,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.transparent,
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text("Ver todos"),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                final CardUiModel card = CardUiModel(
                    heroTag: "$title/driverImage/$index",
                    imageDriver:
                        Image.asset("assets/images/drivers/hamilton.png"),
                    imageCountry: Image.asset('assets/images/countries/uk.png',
                        width: 20),
                    name: "Lewis",
                    lastName: "Hamilton");
                return CardItem(card);
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FastScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildNextRace(),
            _buildHorizontalList("Pilotos"),
            _buildHorizontalList("Equipes")
          ],
        ),
      ),
    );
  }
}
