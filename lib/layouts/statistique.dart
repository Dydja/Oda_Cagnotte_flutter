import 'package:flutter/material.dart';

import 'navigation_drive.dart';

class Statistique extends StatelessWidget {
  const Statistique({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>Scaffold(
      drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('Visualiser les differents statistiques'),
      centerTitle: true,
      backgroundColor: Colors.deepOrange,
    )
  );
}
