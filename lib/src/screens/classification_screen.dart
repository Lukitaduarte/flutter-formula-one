import 'package:flutter/material.dart';
import 'package:formula_one/src/components/colors.dart';
import 'package:formula_one/src/components/lists/list_item.dart';
import 'package:formula_one/src/components/lists/list_item_ui_model.dart';
import 'package:formula_one/src/data/mock_data.dart';
import 'package:formula_one/src/data/models/driver.dart';
import 'package:formula_one/src/data/models/statistics.dart';

class ClassificationScreen extends StatelessWidget {
  final mock = MockData();

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

  Widget _buildTitle() {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Classificação de Pilotos",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  Widget _buildClassification() {
    final Driver driver = Driver(
        position: 1,
        name: "Lewis",
        lastName: "Hamilton",
        countryImageUrl: "assets/images/countries/uk.png",
        statistics: Statistics(),
        team: null);

    return Expanded(
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 12, right: 12),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                      ),
                      child: Container(
                        color: FormulaGray,
                        padding: EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: [
                                Text(driver.position.toString()),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(driver.name),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  driver.lastName.toUpperCase(),
                                  style: TextStyle(
                                    color: FormulaPrimaryDark,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: FormulaAccent,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
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
                    _buildTitle(),
                    _buildClassification(),
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
