import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deb/layouts/navigation_drive.dart';
import 'package:animator/animator.dart';
import 'package:flutter_deb/load/animate.dart';

/*void main() {
  runApp(MyApp());
}

}*/

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent)
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 //declarons notre variable pour le titre
  static final String title = 'ODA CAGNOTTE';

  @override
  Widget build(BuildContext context)=>MaterialApp(
    debugShowCheckedModeBanner:false,
    title:title, //le titre
    theme : ThemeData(primarySwatch: Colors.deepOrange), //la couleur du theme
    initialRoute: '/',
    routes: { //lorsqu'on navigue sur la premiere page c'est le slash
    '/': (context) => const Animated(title: "loading"),
    '/menu': (context) => const Home(title: 'ODA CAGNOTTE',),//second page je definis le nom de la route
  },

      //home:Home(), //la classe
  );


}

/*class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/

//import 'package:flutter/material.dart';

//create deux itineraire un pour le home et l'autre pour la page 2


/*class Home extends StatelessWidget {
  const Home({Key? key, required this.title}) : super(key: key);
//declarons une variable title
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(
        child: Text('Home'),

          /*ElevatedButton( onPressed: () { //le click qui vas declencher
            Navigator.of(context).push(_createRoute());
          },
          child: const Text('Enregister un academicien!'),*/

        ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          //  Supprimez tout rembourrage du ListView.
          padding: EdgeInsets.all(2),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: const Text('Enregistrer un academicien'),
              onTap: () {
                // Update the state of the app.

                // ...
              },
            ),
            ListTile(
              title: const Text('Listes des academiciens'),
              onTap: () {
                // Update the state of the app.
               // Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Create()));
              },
            ),
            ListTile(
              title: const Text('Ajout paiement'),
              onTap: () {
                // Update the state of the app.
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),

      ),

    );
  }
}
//la function de la page 2 after un click sur le button
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
//la classe page 2
class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Page 2'),
      ),
    );
  }
}*/


class Home extends StatefulWidget {
  const Home({Key?key, required String title}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) =>Scaffold( //annonce du drawer
    drawer: NavigationDrawerWidget(), //le nom de la classe du drawer
    appBar: AppBar(title: Text(MyApp.title),//le titre de l'application
    ),
    /*body: Animated(
      //child: Text(
       // 'Welcome',
     // ),
    ),*/
    //body: Builder(builder: (BuildContext context) {  },) ,

  );
}

/*class Animated extends StatelessWidget {
  const Animated({Key?key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Animator<double>(
      tween: Tween<double>(begin:0, end: 200),
      cycles: 0,
      //la duree
      duration: Duration(seconds: 1),
      //navigateAfterSeconds: new Home(title:' ODA CAGNOTTE')
        // Within the `FirstScreen` widget

      builder: (context,animatorState, child) =>Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          height: animatorState.value,
          width: animatorState.value,
          child: FlutterLogo(),
        ),
      ),
    );
  }
}*/
