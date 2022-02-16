

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_deb/main.dart';
import 'package:flutter_deb/main.dart';

class Animated extends StatefulWidget {
  const Animated({Key?key, required String title}) : super(key: key);

  @override
  _AnimatedState createState() => _AnimatedState();
}

class _AnimatedState extends State<Animated> {
  @override
  //after load retour sur le menu 
   void initState(){
    super.initState();
    //duréé du load et apparition de la page d'accueil
    Timer(
        Duration(seconds: 3), 
        ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context)=>Home(title: 'ODA CAGNOTTE'))));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //padding: const EdgeInsets.symmetric(vertical: 70.0 , horizontal: 60.0),
        //prends toute la dimension de l'ecran
        width: double.infinity,
        height: double.infinity,
        //une couleur degrade a notre page d'accueil
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFEEE7E7),
              Color(0xFFFF800B),
            ]
          )
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,//Centre l'elts
          mainAxisAlignment: MainAxisAlignment.spaceAround,//espace entre elemnt et le load
          children: [
            Column(
              children:[
                Image.asset('images/lou.png',height: 300.0, width: 250.0,),

                Text("Welcome to the payment platform", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
                  textAlign:TextAlign.center,//centrer le texte
                ),
               ]
            ),
            CircularProgressIndicator()//le loading
          ],
        ),



        /*child:Column(
          children: <Widget>[
            Image.asset('images/lou.png',height: 300.0, width: 250.0,),
            Text("Welcome to the payment platform", style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
              textAlign:TextAlign.center,//centrer le texte
            ),
            CircularProgressIndicator()//le loading
          ],
        ),*/
      ),
    );
  }
}
