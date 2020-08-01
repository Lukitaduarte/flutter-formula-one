import 'package:flutter/material.dart';
import 'package:formula_one/src/components/colors.dart';

class HomeScreen extends StatelessWidget {
  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildSidebar() {
    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        children: <Widget>[
          Icon(Icons.home, color: FormulaPrimary,),
          Text("Início", style: TextStyle(color: FormulaPrimary, fontSize: 10),),
          SizedBox(height: 12,),
          Icon(Icons.description, color: FormulaPrimary,),
          Text("Notícias", style: TextStyle(color: FormulaPrimary, fontSize: 10),),
          SizedBox(height: 12,),
          Icon(Icons.person, color: FormulaPrimary,),
          Text("Pilotos", style: TextStyle(color: FormulaPrimary, fontSize: 10),),
          SizedBox(height: 12,),
          Icon(Icons.filter_9_plus, color: FormulaPrimary,),
          Text("Equipes", style: TextStyle(color: FormulaPrimary, fontSize: 10),),
          SizedBox(height: 12,),
          Icon(Icons.assistant_photo, color: FormulaPrimary,),
          Text("Corridas", style: TextStyle(color: FormulaPrimary, fontSize: 10),),
          SizedBox(height: 12,),
          Icon(Icons.live_tv, color: FormulaPrimary,),
          Text("Trans.", style: TextStyle(color: FormulaPrimary, fontSize: 10),),
          SizedBox(height: 12,),
          Icon(Icons.settings, color: FormulaPrimary,),
          Text("Config.", style: TextStyle(color: FormulaPrimary, fontSize: 10),),
        ],
      ),
    );
  }

  Widget _buildNextRace() {
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
        Row(
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
                            Text("31/07"),
                            Text("10:00h"),
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
                                  "Grã-Bretanha",
                                  style: TextStyle(color: FormulaAccent),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Image.asset('assets/images/countries/uk.png',
                                    width: 20)
                              ],
                            ),
                            Text(
                              "FORMULA 1 PIRELLI BRITISH GRAND PRIX 2020",
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
        ),
        SizedBox(
          height: 12,
        ),
        Row(
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
                            Text("31/07"),
                            Text("10:00h"),
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
                                  "Grã-Bretanha",
                                  style: TextStyle(color: FormulaAccent),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Image.asset('assets/images/countries/uk.png',
                                    width: 20)
                              ],
                            ),
                            Text(
                              "FORMULA 1 PIRELLI BRITISH GRAND PRIX 2020",
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
        ),
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
                return Padding(
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
                              child: Image.asset('assets/images/hamilton.png'),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 150,
                              color: FormulaPrimaryDark,
                              padding: EdgeInsets.only(left: 12),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Lewis",
                                        style: TextStyle(color: FormulaPrimary),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset(
                                          'assets/images/countries/uk.png',
                                          width: 20)
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
                );
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
      drawer: _buildDrawer(),
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
//
//class BackgroundClipper extends CustomClipper<Path> {
//  @override
//  getClip(Size size) {
//    var path = new Path();
//
//    path.lineTo(size.width/4, size.height);
//    path.quadraticBezierTo(
//        size.width / 2, size.height/2, size.width, size.height - 250);
//    path.lineTo(size.width, 0.0);
//    path.close();
//    return path;
//  }
//
//  @override
//  bool shouldReclip(CustomClipper oldClipper) {
//    return null;
//  }
//}
