import 'package:flutter/material.dart';

import '../../features/ranking/presentation/ranking_screen.dart';
import '../../features/news/presentation/news_screen.dart';
import '../../screens/home_screen.dart';
import '../menu/menu_item_ui_model.dart';
import '../menu/menu_widget.dart';
import '../../themes/colors.dart';

class FastScaffold extends StatelessWidget {
  const FastScaffold({
    Key? key,
    this.appBar,
    this.body,
    this.hideMenu = false,
  }) : super(key: key);

  final AppBar? appBar;
  final Widget? body;
  final bool hideMenu;

  @override
  Widget build(BuildContext context) {
    final List<MenuItemUiModel> menuItems = [
      MenuItemUiModel(
        icon: Icons.home,
        label: 'Início',
        onPressed: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => HomeScreen(),
          ),
        ),
      ),
      MenuItemUiModel(
        icon: Icons.description,
        label: 'Notícias',
        onPressed: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => NewsScreen(),
          ),
        ),
      ),
      MenuItemUiModel(
        icon: Icons.list,
        label: 'Classific.',
        onPressed: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => RankingScreen(),
          ),
        ),
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

    return Scaffold(
      backgroundColor: FormulaPrimaryDark,
      appBar: appBar != null
          ? this.appBar
          : AppBar(
              backgroundColor: Colors.transparent,
              title: Text("SUPER FORMULA"),
              elevation: 0,
            ),
      body: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            if (!hideMenu)
              Flexible(
                flex: 1,
                child: MenuWidget(items: menuItems),
              ),
            Expanded(
              flex: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                ),
                child: Container(
                  color: FormulaPrimary,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: body,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
