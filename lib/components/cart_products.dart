import 'package:flutter/material.dart';


class Cart_Products extends StatefulWidget {
  @override
  _Cart_ProductsState createState() => _Cart_ProductsState();
}

class _Cart_ProductsState extends State<Cart_Products>{
  var Products_On_The_Cart =[
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "Shoe",
      "picture": "images/products/shoe1.jpg",
      "price": 55,
      "size": "7",
      "color": "Red",
      "quantity": 1,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount:Products_On_The_Cart.length,

        itemBuilder: (context ,index){
          return Single_Cart_Product(
            cart_prod_name: Products_On_The_Cart[index]["name"],
            cart_prod_picture: Products_On_The_Cart[index]["picture"],
            cart_prod_price:Products_On_The_Cart[index]["price"] ,
            cart_prod_size: Products_On_The_Cart[index]["size"],
            cart_prod_color: Products_On_The_Cart[index]["color"],
            cart_prod_quantity:Products_On_The_Cart[index]["quantity"] ,
          );
        },
        );
  }
}

class Single_Cart_Product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_quantity;

  Single_Cart_Product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_quantity,
});
  @override
  Widget build(BuildContext context) {
    return Card(
      
      child: ListTile(
 //=============LEADING SECTION=====================
        leading: new Image.asset(cart_prod_picture,
          width: 80.0,height: 80.0,),
 //================TITLE SECTION=====================
        title:new Text(cart_prod_name),
 //================SUBTITLE SECTION==================
        subtitle: new Column(
          children: <Widget>[
            //ROW INSIDE THE COLOUMN
            new Row(children: <Widget>[
              //this section is for the size of the product
              Padding(padding: const EdgeInsets.all(0.0),
                  child:new Text("Size:") ),
              Padding(padding: const EdgeInsets.all(4.0),
                  child:new Text(cart_prod_size,style: TextStyle(color: Colors.purple),) ),
              //this section is for color of the product
              new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
              child:new Text("Color:") ,),
              Padding(padding: const EdgeInsets.all(4.0),
                  child:new Text(cart_prod_color,style: TextStyle(color: Colors.purple),) ),


            ],),
//THIS SECTION IS THE PRODUCT PRICE
            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\$${cart_prod_price}",style: TextStyle(
                  fontSize:16.0,
                  fontWeight: FontWeight.bold),),
            ),
          ],
        ),
        trailing:
        FittedBox(
          fit: BoxFit.fill,
          child:
          Column(
            children: <Widget>[
              IconButton(icon: Icon(Icons.arrow_drop_up,color: Colors.red),iconSize: 38, onPressed: () {}),
              Text('$cart_prod_quantity',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              IconButton(icon: Icon(Icons.arrow_drop_down,color: Colors.red,),iconSize: 38, onPressed: () {}),

            ],
          ),
        ),
      ),

    );

  }
}



