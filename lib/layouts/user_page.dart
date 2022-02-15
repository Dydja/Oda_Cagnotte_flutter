import'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  final String name;
  final String urlImage;
  const UserPage({Key?key, required this.name, required this.urlImage}) : super(key: key);

  @override
  Widget build(BuildContext context)=>Scaffold(
    appBar:AppBar(
      title: Text(name),
      backgroundColor: Colors.deepOrange,
      centerTitle: true,
    ),
    //Affiche essentiellment le nom et l'image
    body : Image.network(
        urlImage,
        //prend toute la dimension
        width: double.infinity,
        height: double.infinity,
        fit : BoxFit.cover)
  ) ;
}


