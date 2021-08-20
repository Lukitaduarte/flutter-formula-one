import 'package:flutter/material.dart';
import 'package:formula_one/src/components/cards/card_item.dart';
import 'package:formula_one/src/components/cards/card_ui_model.dart';
import 'package:formula_one/src/themes/colors.dart';
import 'package:formula_one/src/components/lists/list_item.dart';
import 'package:formula_one/src/components/lists/list_item_ui_model.dart';
import 'package:formula_one/src/components/menu/menu_item_ui_model.dart';
import 'package:formula_one/src/components/menu/menu_widget.dart';

class HomeScreen extends StatelessWidget {
  final List<MenuItemUiModel> menuItems = [
    MenuItemUiModel(
      icon: Icons.home,
      label: 'Início',
      onPressed: () => print('inicio'),
    ),
    MenuItemUiModel(
      icon: Icons.description,
      label: 'Notícias',
      onPressed: () => print('noticia'),
    ),
    MenuItemUiModel(
      icon: Icons.list,
      label: 'Classific.',
      onPressed: () => print('classificacao'),
    ),
    MenuItemUiModel(
      icon: Icons.assistant_photo,
      label: 'Corridas',
      onPressed: () => print('corridas'),
    ),
    MenuItemUiModel(
      icon: Icons.info_outline,
      label: 'Sobre',
      onPressed: () => print('sobre'),
    ),
  ];

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

  Widget _buildMainContainer(BuildContext context) {
    return ClipRRect(
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
            Flexible(
              flex: 1,
              child: MenuWidget(items: menuItems),
            ),
            Expanded(
              flex: 5,
              child: _buildMainContainer(context),
            ),
          ],
        ),
      ),
    );
  }
}
