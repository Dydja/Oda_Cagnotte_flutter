import 'package:flutter/material.dart';

import 'navigation_drive.dart';

class AddPayment extends StatelessWidget {
  const AddPayment({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context)=>Scaffold(
      drawer: NavigationDrawerWidget(),
    appBar:AppBar(title: Text('Ajouter le paiement'),
    centerTitle: true,
      backgroundColor: Colors.deepOrange,
    )
  ) ;
}
