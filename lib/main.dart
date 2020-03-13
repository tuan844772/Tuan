
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutterapp/componets/horizontal_listview.dart';
import 'package:flutterapp/componets/products.dart';
void main(){
  runApp(
     MaterialApp(
       debugShowCheckedModeBanner: false,
      home: HomePage(),
     )
  );
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_Carousel = new Container(
    height: 200.0,
    child: new Carousel(
    boxFit: BoxFit.cover,
    images: [
      AssetImage('assets/images/jpg/AAIPESM.jpeg'),
      AssetImage('assets/images/jpg/AAIPESM.jpeg'),
      AssetImage('assets/images/jpg/AAIPESM.jpeg'),
      AssetImage('assets/images/jpg/AAIPESM.jpeg'),
      AssetImage('assets/images/jpg/AAIPESM.jpeg'),
    ],
      autoplay: true,
      //animationCurve: Curves.fastOutSlowIn,
      //animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      dotColor: Colors.red,
      indicatorBgPadding: 2.0,
      dotBgColor: Colors.transparent,
    ),
    );
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text('FashApp'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), color: Colors.white, onPressed: () {}),
          new IconButton(icon: Icon(Icons.shopping_cart), color: Colors.white, onPressed: () {}),
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: Text('Santos Enoque'),
                accountEmail: Text('santosenoque.ss@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white,),
              ),
            ),
              decoration: new BoxDecoration(
                color: Colors.red
              ),
            ),
           InkWell(
              onTap: (){},
              child: ListTile(
                  title: Text('Home Page'),
                  leading: Icon(Icons.home, color: Colors.red,),
            ),
           ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person, color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My orders'),
                leading: Icon(Icons.shopping_cart, color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard, color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.red,),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_Carousel,
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories'),),
          HorizontalList(),
          new Padding(padding: const EdgeInsets.all(20.0),
          child: new Text('Recent products'),),
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}

