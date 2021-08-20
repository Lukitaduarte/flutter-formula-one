import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../themes/colors.dart';

class DriverDetailScreen extends StatefulWidget {
  final String tag;

  DriverDetailScreen({this.tag});

  @override
  _DriverDetailScreenState createState() => _DriverDetailScreenState();
}

class _DriverDetailScreenState extends State<DriverDetailScreen> {
  double _detailsPosition = -200;

  Widget _buildHero() {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      bottom: 200,
      child: Hero(
        tag: widget.tag,
        child: ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.6, 1],
              colors: [FormulaPrimaryDark, Colors.transparent],
            ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
          },
          blendMode: BlendMode.dstIn,
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
          itemBuilder: (context, index) {
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
                        border: Border(
                            top: BorderSide(color: FormulaAccent, width: 4))),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "225",
                            style: TextStyle(
                                color: FormulaPrimary,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Races",
                            style:
                                TextStyle(color: FormulaPrimary, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
              ],
            );
          }),
    );
  }

  Widget _buildDetails() {
    return AnimatedPositioned(
      right: 0,
      left: 0,
      bottom: _detailsPosition,
      duration: Duration(seconds: 1),
      curve: Curves.fastLinearToSlowEaseIn,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              FormulaPrimaryDark,
              FormulaPrimaryDark
            ],
          ),
        ),
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
        child: Stack(
          children: <Widget>[_buildHero(), _buildDetails()],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 50), () {
      setState(() {
        _detailsPosition = 50;
      });
    });
  }
}
