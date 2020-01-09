import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
//my own imports
import 'package:flutter_shopapp/components/Horizantal_ListView.dart';
import 'package:flutter_shopapp/components/products.dart';
import 'package:flutter_shopapp/pages/cart.dart';
import 'home.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState ();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel= new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/IMG_1266.JPG'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: false,
//      animationCurve: Curves.fastOutSlowIn,
//      animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.grey,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent ,
      ),
    );
    return Scaffold (
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.purple,
        title: Text ('FashApp'),
        actions: <Widget>[
          new IconButton(
              icon: Icon (Icons.search, color: Colors.white), onPressed: () {}),
          new IconButton(icon: Icon (Icons.shopping_cart, color: Colors.white),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> new Cart()));
              })
        ],
      ),
      drawer: new Drawer(
        child: Expanded(
          child: new ListView(
            children: <Widget>[
              //header
              new UserAccountsDrawerHeader(accountName: Text ('Sakshi Jinnewar'),
                accountEmail: Text ('sakshijinnewar@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person,color: Colors.white),

                  ),
                ),

                decoration: new   BoxDecoration(color: Colors.purple,),
              ),
              //body
              InkWell(
                onTap: (){
                },
                child: ListTile(
                  title: Text('HomePage'),
                  leading: Icon(Icons.home,color: Colors.deepPurpleAccent),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(Icons.person,color: Colors.deepPurpleAccent),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('My Orders'),
                  leading: Icon(Icons.shopping_basket,color: Colors.deepPurpleAccent),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
                },
                child: ListTile(
                  title: Text('Shopping Cart'),
                  leading: Icon(Icons.shopping_cart,color: Colors.deepPurpleAccent),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Favourites'),
                  leading: Icon(Icons.favorite_border,color: Colors.deepPurpleAccent),
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Setting'),
                  leading: Icon(Icons.settings,color: Colors.pinkAccent),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help,color: Colors.deepPurple),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Expanded(
        child: new ListView(
          children: <Widget>[
            //image carousel begins here
            //       image_carousel,

            //padding widget
            new Padding(padding: const EdgeInsets.all(4.0),
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: new Text('Categories')),),

            //Horizontal List View begins here
            HorizontalList(),

            //padding widget
            new Padding(padding: const EdgeInsets.all(8.0),
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: new Text('Recent Products')),),

            //GridView

            Flexible(child: Products(),
            ),



          ],
        ),
      ),
    );
  }
}