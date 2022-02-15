import'package:flutter/material.dart';

import 'navigation_drive.dart';


class ReadAcademicien extends StatelessWidget {
  const ReadAcademicien({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>Scaffold(
      drawer: NavigationDrawerWidget(),
    appBar:AppBar(
      title: Text('Listes des academiciens'),
      centerTitle: true,
      backgroundColor: Colors.deepOrange,
    )
  ) ;
}

