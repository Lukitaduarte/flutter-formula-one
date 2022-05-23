import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formula_one/src/features/news/details/presentation/news_details_screen.dart';
import 'package:formula_one/src/themes/colors.dart';

import '../../../components/scaffold/fast_scaffold.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FastScaffold(
      body: DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Column(
          children: [
            const SizedBox(height: 8),
            TabBar(
              isScrollable: true,
              indicatorWeight: 1,
              indicator: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.transparent),
              ),
              tabs: <Widget>[
                Container(
                  width: 64,
                  height: 64,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/news/ge.png',
                    ),
                  ),
                ),
                Container(
                  width: 64,
                  height: 64,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/news/band.png',
                    ),
                  ),
                ),
                Container(
                  width: 64,
                  height: 64,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/news/ms.png',
                    ),
                  ),
                ),
                Container(
                  width: 64,
                  height: 64,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/news/ms.png',
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 12, right: 12),
                    child: ListView.separated(
                      itemBuilder: (_, __) => InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => NewsDetailsScreen(),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                          child: Container(
                            color: FormulaGray,
                            padding: EdgeInsets.all(12),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width / 4,
                                  height: MediaQuery.of(context).size.width / 4,
                                  child: Placeholder(),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit?',
                                        style: TextStyle(
                                          color: FormulaPrimaryDark,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      itemCount: 6,
                      separatorBuilder: (_, __) => SizedBox(height: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, right: 12),
                    child: ListView.separated(
                      itemBuilder: (_, __) => InkWell(
                        onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => NewsDetailsScreen(),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                          child: Container(
                            color: FormulaGray,
                            padding: EdgeInsets.all(12),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width / 4,
                                  height: MediaQuery.of(context).size.width / 4,
                                  child: Placeholder(),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit?',
                                        style: TextStyle(
                                          color: FormulaPrimaryDark,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      itemCount: 6,
                      separatorBuilder: (_, __) => SizedBox(height: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, right: 12),
                    child: ListView.separated(
                      itemBuilder: (_, __) => ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        ),
                        child: Container(
                          color: FormulaGray,
                          padding: EdgeInsets.all(12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width / 4,
                                height: MediaQuery.of(context).size.width / 4,
                                child: Placeholder(),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit?',
                                      style: TextStyle(
                                        color: FormulaPrimaryDark,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                            ],
                          ),
                        ),
                      ),
                      itemCount: 6,
                      separatorBuilder: (_, __) => SizedBox(height: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, right: 12),
                    child: ListView.separated(
                      itemBuilder: (_, __) => ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        ),
                        child: Container(
                          color: FormulaGray,
                          padding: EdgeInsets.all(12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width / 4,
                                height: MediaQuery.of(context).size.width / 4,
                                child: Placeholder(),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit?',
                                      style: TextStyle(
                                        color: FormulaPrimaryDark,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                            ],
                          ),
                        ),
                      ),
                      itemCount: 6,
                      separatorBuilder: (_, __) => SizedBox(height: 12),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
