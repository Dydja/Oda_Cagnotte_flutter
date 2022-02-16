import'package:flutter/material.dart';

import 'navigation_drive.dart';

/*class AddAcademicien extends StatelessWidget {
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



    //mise en place du formulaire
    /*
    * body:Container(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          ],
        ),
      ),
    )*/
    //backgroundColor: Color(0xFFffffff),

  ) ;

}*/

class AddAcademicien extends StatefulWidget {
  const AddAcademicien({Key?key}) : super(key: key);

  @override
  _AddAcademicienState createState() => _AddAcademicienState();
}

class _AddAcademicienState extends State<AddAcademicien> {
   // Declarons les variables
   String lastname= '';
   String firstname = '';
   String register_number = '';
   String email = '';

   // Create a global key that uniquely identifies the Form widget
   // and allows validation of the form.
   //
   // Note: This is a `GlobalKey<FormState>`,
   // Initialisons le parametre qui permettra la validation du formulaire.


   final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

   /* return Form(
          //padding: const EdgeInsets.only(left: 40, right: 40),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

              ],
            ),
          ),

    );*/
    final double height= MediaQuery.of(context).size.height;
    return  Scaffold(
      //Entete du projets
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(title: Text("Enregistrer l'academicen") ,
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        // declare variable pour la validation du form et la couleur de l'arriere plan
        //key: _formKey,
        backgroundColor: Color(0xFFffffff),
        //Le texte du milieu
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 50.0 , horizontal: 30.0),
            child: Form(
              key: _formKey,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget> [
                  Image.asset('images/oda.png',height: 100.0, width: 100.0,),
                  //hauteur de l'image
                  SizedBox(height:5.0),
                  Center(
                    child: Text("please register !", style: TextStyle(fontSize: 30, color:Colors.black),),
                  ),
                  //donnons une taille
                  SizedBox(height:8.0,),
                  //le formulaire
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.people,color:Colors.grey),
                        labelText: "Entrer votre nom"
                    ),
                    //Validation du formulaire avec de regrex
                    validator: (value){
                      if (value == null || value.isEmpty) {
                        return "Votre nom est incorrect";
                      }
                        return null;
                    },
                  ),

                  //donnons une taille
                  SizedBox(height: 8.0),
                  //le formulaire
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.people,color:Colors.grey),
                        labelText: "Entrer votre prénom"
                    ),
                    //Validation du formulaire avec de regrex
                    validator: (value){
                      if (value == null || value.isEmpty) {
                        return "Votre prénom est incorrect";
                      }
                        return null;
                    },
                  ),

                  //donnons une taille  height*0.04,
                  SizedBox(height:8.0),
                  //le formulaire
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.people,color:Colors.grey),
                        labelText: "Entrer votre Matricule"
                    ),
                    //Validation du formulaire avec de regrex
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return " Votre Matricule est incorrect";
                      }
                        return null;
                    },
                  ),

                  //donnons une taille
                  SizedBox(height:8.0),
                  //le formulaire
                  TextFormField(
                    decoration: InputDecoration(
                      //Ajout d'icon au formulaire
                        prefixIcon: Icon(Icons.email,color:Colors.grey),
                        labelText: "Entrer votre E-mail"
                    ),

                    //Validation du formulaire avec de regrex
                    validator: (value){
                      if (value == null || value.isEmpty) {
                        return "Votre E-mail est incorrect";
                      }
                        return null;
                    },
                  ),

                  SizedBox(height:10.0),
                  /*Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Enregistré avec succès',style: TextStyle(color: Colors.green),)),
                          );
                        }
                      },
                      child: const Text('Submit',style: TextStyle(color: Colors.deepOrangeAccent),),

                    ),

                  ),*/


                  //donnons une taille
                  //SizedBox(height: 5.0),
                  //le formulaire
                  /*TextFormField(
                    decoration: InputDecoration(
                        labelText: "Entrer votre E-mail",
                        //border:OutlineInputBorder() after la paranthese ont fait obscureText:true
                    ),


                    //Validation du formulaire avec de regrex
                    validator: (value){
                      if(value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4 }').hasMatch(value!)){
                        return "Erreur ,entrer votre E-mail est incorrect";
                      }
                      else{
                        return null;
                      }
                    },
                  ),*/
                  //Bouton d'envoie du formulaire
                  FlatButton(
                      onPressed:() {
                         //Pour le send form
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Enregistré avec succès',style: TextStyle(fontSize: 16,color:Colors.green),)),
                          );
                        }

                      },
                      color: Colors.deepOrangeAccent,
                    child: Center(
                      child: Text('S\'inscrire'),
                      //Border radius

                    ),
                      //Border radius
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                  )
                  )
                ],

              ),
            ),
          ),
        )

    );

  }
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
