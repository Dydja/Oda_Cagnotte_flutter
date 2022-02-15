import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deb/layouts/add_academicien_page.dart';
import 'package:flutter_deb/layouts/list_academicien.dart';
import 'package:flutter_deb/layouts/statistique.dart';
import 'package:flutter_deb/layouts/add_payement.dart';
import 'package:flutter_deb/layouts/user_page.dart';

//statelessWidget sont des widgets sans etat par d'interactivé avec le user
//statefullWidger sont des widgets avec etat interaction avec le user(textfield,form)
class NavigationDrawerWidget extends StatelessWidget {
  //const NavigationDrawerWidget({Key?key}) : super(key: key);
final padding = EdgeInsets.symmetric(horizontal: 15); //dimension des elts
  @override
  Widget build(BuildContext context) {

    //declarons nos varibales
    final name = 'Zahouly lou';
    final email = "lou@gmail.com";
    final urlImage = 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';

    return Drawer(//liste des elements de la liste
      child: Material(
        color: Color.fromRGBO(165, 170, 191, 0.3607843137254902),
        child: ListView(//creons la liste view
          padding: padding,
          children: <Widget>[
            //creons la function d'en-tête
            buildHeader(
              urlImage:urlImage,
              name:name,
              email:email,
              //lien pournaviguer sur la page
              onClicked:() => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>UserPage(
                  name: name,
                  urlImage: urlImage),
              )),
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 48),//la hauteur des box
                  buildMenuItem(
                    text:'Enregistrer un academicien',
                    icon:Icons.people,
//appelle du clique avec un numero unique
                    onClicked: () => selectedItem(context, 0),
                  ),

                  const SizedBox(height: 16),//la hauteur des box
                  buildMenuItem(
                    text:'Lister les academiciens',
                    icon:Icons.view_list,
//appelle du clique avec un numero unique
                    onClicked: () => selectedItem(context, 1),
                  ),

                  const SizedBox(height: 16),//la hauteur des box
                  buildMenuItem(
                      text:'Enregistrer un payement',
                      icon:Icons.savings,
                      onClicked: () => selectedItem(context, 2)
                  ),

                  const SizedBox(height: 16),//la hauteur des box
                  buildMenuItem(
                      text:'Statitiques',
                      icon:Icons.equalizer,
                      onClicked: ()=>selectedItem(context, 3)
                  ),
             //Mise en place du divider pour separer les elts
                  const SizedBox(height: 16),//la hauteur des box
                  Divider(color: Colors.white70),

                  const SizedBox(height: 24),
                  buildMenuItem(
                    text:'Plugins',
                    icon:Icons.account_tree_outlined,

                  ),

                  const SizedBox(height: 24),
                  buildMenuItem(
                    text:'Notifications',
                    icon:Icons.notifications_outlined,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
  required String text,//nos variables text et l'icon
    required IconData icon,

    //ajout d'un gestionnaire non cliqué
    VoidCallback ? onClicked,
}){
    final color = Colors.black; //couleur des textes
    //couleur de survol
    final hoverColor = Colors.orange;
    return ListTile(
      leading: Icon(icon,color:color),//tu maffiche l'icon dabords
      title: Text(text, style: TextStyle(color: color)), //ensuite le text
      hoverColor: hoverColor,//couleur de survol
      onTap: onClicked,
    );//renvoyons une vignette de liste
  }

  //Creons la function selectedItem qui prend en parametre l'index qui est le number definit dans le ontap

void selectedItem(BuildContext context, int index){
    //Fermons le drawer after every choose
   Navigator.of(context).pop();
    //faisons un switch sur l'index
  switch(index){
    //add academicien
    case 0:
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddAcademicien ()));
      break;
      //listes academicien
    case 1:
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ReadAcademicien()));
      break;
      //Ajout paiement
    case 2:
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddPayment()));
      break;
      //Ajout paiement
    case 3:
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Statistique()));
      break;
  }


}

//Methode buildHeader
  Widget buildHeader({
    required String urlImage,//nos variables text et l'icon
    required String name,
    required String email,
    //ajout d'un gestionnaire non cliqué
    required VoidCallback onClicked,

  }) => InkWell(
    //on peut cliquer sur notre article pour naviguer mtna
    onTap: onClicked,
    //faire l'icon de l'image en rond
    child:Container(
      padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
      child: Row(
        children: [
          CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                ),
                //const SizedBox(height: 4),
                Text(
                  email,
                  style: TextStyle(fontSize: 14,color: Colors.white),
                ),
              ],
          ),
// notre icon pour plus de widget
          Spacer(),
          CircleAvatar(
            radius: 24,
            backgroundColor: Color.fromRGBO(241, 100, 5, 1.0),
            child: Icon(Icons.add_comment_outlined, color: Colors.white),
          )

        ],
      ),
    ) ,
  );

}
