import 'package:flutter/material.dart';
import 'package:formula_one/src/themes/colors.dart';

import '../../../components/scaffold/fast_scaffold.dart';

class RankingScreen extends StatelessWidget {
  const RankingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FastScaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 12.0,
                left: 12.0,
              ),
              child: Text(
                "Campeonato de pilotos",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            ...List.generate(
              20,
              (index) => _listItem(index),
            ),
          ],
        ),
      ),
    );
  }

  Widget _listItem(int index) {
    return Column(
      children: [
        const SizedBox(height: 12),
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
                      Container(
                        width: 54,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '${index + 1}. ',
                              style: TextStyle(
                                color: FormulaPrimaryDark,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Container(
                              width: 4,
                              height: 24,
                              color: FormulaAccent,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                          ],
                        ),
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
                                  'Mercedes',
                                  style: TextStyle(color: FormulaDarkGray),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Image.asset(
                                  'assets/images/countries/uk.png',
                                  width: 24,
                                ),
                              ],
                            ),
                            Text(
                              'Lewis Hamilton',
                              style: TextStyle(
                                color: FormulaPrimaryDark,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text('20 pts'),
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
      ],
    );
  }
}
