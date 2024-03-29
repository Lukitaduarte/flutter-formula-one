import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/colors.dart';

class DriverDetailScreen extends StatelessWidget {
  final String tag;

  DriverDetailScreen({required this.tag});

  Widget _buildHero() {
    return Expanded(
      flex: 2,
      child: Container(
        color: FormulaPrimary,
        child: Hero(
          tag: tag,
          child: Image.asset(
            "assets/images/drivers/hamilton.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildStatisticCards() {
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index ) {
          return Row(
            children: <Widget>[
              ClipPath(
                clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: FormulaDark,
                      border:
                      Border(top: BorderSide(color: FormulaAccent, width: 4))),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "225",
                          style: TextStyle(
                              color: FormulaPrimary, fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Races",
                          style: TextStyle(color: FormulaPrimary, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16,),
            ],
          );
        }
      ),
    );
  }

  Widget _buildDetails() {
    return Expanded(
      child: Container(
        color: FormulaPrimaryDark,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 16,
            ),
            Text(
              "Lewis Hamilton",
              style:
                  TextStyle(color: FormulaPrimary, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Mercedes AMG Petronas",
              style:
                  TextStyle(color: FormulaPrimary, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              style: TextStyle(color: FormulaPrimary),
            ),
            SizedBox(
              height: 32,
            ),
            _buildStatisticCards(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FormulaPrimaryDark,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: FormulaPrimaryDark),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _buildHero(),
            _buildDetails()
          ],
        ),
      ),
    );
  }
}
