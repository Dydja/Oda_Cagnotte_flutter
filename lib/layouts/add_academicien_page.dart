import'package:flutter/material.dart';

import 'navigation_drive.dart';

class AddAcademicien extends StatelessWidget {
  const AddAcademicien({Key?key}) : super(key: key);

  @override
  /*Widget build(BuildContext context)  {
    return Container();
  }*/
  Widget build(BuildContext context)  =>Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(title: Text("Enregistrer l'academicen") ,
    centerTitle: true,
      backgroundColor: Colors.deepOrange,
    ),
  ) ;
}


/*class AddAcademicien extends StatefulWidget {
  const AddAcademicien({Key ?key}) : super(key: key);

  @override
  _AddAcademicienState createState() => _AddAcademicienState();
}*/

/*class _AddAcademicienState extends State<AddAcademicien> {
  //declarons la varibale qui permettra de valider les informations
  final _formKey = GlobalKey<FormState>();
  @override
  /*Widget build(BuildContext context) {
    return Container();
  }*/

  Widget build(BuildContext context)  =>Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(title: Text("Enregistrer l'academicen") ,
      centerTitle: true,
      backgroundColor: Colors.deepOrange,
    ),
  ) ;

}*/
