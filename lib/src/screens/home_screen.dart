import 'package:flutter/material.dart';
import 'package:formula_one/src/components/cards/card_item.dart';
import 'package:formula_one/src/components/cards/card_ui_model.dart';
import 'package:formula_one/src/components/colors.dart';
import 'package:formula_one/src/components/lists/list_item.dart';
import 'package:formula_one/src/components/lists/list_item_ui_model.dart';

class HomeScreen extends StatelessWidget {
  Widget _buildSidebar() {
    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        children: <Widget>[
          Icon(
            Icons.home,
            color: FormulaPrimary,
          ),
          Text(
            "Início",
            style: TextStyle(color: FormulaPrimary, fontSize: 10),
          ),
          SizedBox(
            height: 12,
          ),
          Icon(
            Icons.description,
            color: FormulaPrimary,
          ),
          Text(
            "Notícias",
            style: TextStyle(color: FormulaPrimary, fontSize: 10),
          ),
          SizedBox(
            height: 12,
          ),
          Icon(
            Icons.person,
            color: FormulaPrimary,
          ),
          Text(
            "Pilotos",
            style: TextStyle(color: FormulaPrimary, fontSize: 10),
          ),
          SizedBox(
            height: 12,
          ),
          Icon(
            Icons.filter_9_plus,
            color: FormulaPrimary,
          ),
          Text(
            "Equipes",
            style: TextStyle(color: FormulaPrimary, fontSize: 10),
          ),
          SizedBox(
            height: 12,
          ),
          Icon(
            Icons.assistant_photo,
            color: FormulaPrimary,
          ),
          Text(
            "Corridas",
            style: TextStyle(color: FormulaPrimary, fontSize: 10),
          ),
          SizedBox(
            height: 12,
          ),
          Icon(
            Icons.live_tv,
            color: FormulaPrimary,
          ),
          Text(
            "Trans.",
            style: TextStyle(color: FormulaPrimary, fontSize: 10),
          ),
          SizedBox(
            height: 12,
          ),
          Icon(
            Icons.settings,
            color: FormulaPrimary,
          ),
          Text(
            "Config.",
            style: TextStyle(color: FormulaPrimary, fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget _buildNextRace() {

    final ListItemUiModel uiModel = ListItemUiModel(
        date: "31/07",
        hour: "10:00h",
        title: "FORMULA 1 PIRELLI BRITISH GRAND PRIX 2020",
        country: "Grã-Bretanha",
        imageCountry: Image.asset('assets/images/countries/uk.png', width: 20)
    );

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
              Text("Ver todas"),
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
                    imageDriver: Image.asset("assets/images/drivers/hamilton.png"),
                    imageCountry: Image.asset('assets/images/countries/uk.png', width: 20),
                    name: "Lewis",
                    lastName: "Hamilton"
                );
                return CardItem(card);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainContainer(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
        ),
        child: Container(
          color: FormulaPrimary,
          child: Align(
            alignment: Alignment.topLeft,
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: <Widget>[
                    _buildNextRace(),
                    _buildHorizontalList("Pilotos"),
                    _buildHorizontalList("Equipes")
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FormulaPrimaryDark,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("FORMULA 1"),
        elevation: 0,
      ),
      body: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildSidebar(),
            _buildMainContainer(context),
          ],
        ),
      ),
    );
  }
}
