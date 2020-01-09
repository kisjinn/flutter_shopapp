import 'package:flutter/material.dart';
import 'package:flutter_shopapp/pages/home.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.purple,
        title: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new HomePage()));
          },
          child: Text('FashApp'),
        ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
        ],
      ),
      body: Expanded(
        child: new ListView(
          children: <Widget>[
            new Container(
              height: 300,
              child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_detail_picture),
                ),
                footer: new Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: new Text(
                      widget.product_detail_name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                            child: new Text(
                                "\$${widget.product_detail_old_price}",
                                style: TextStyle(
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough))),
                        Expanded(
                            child: new Text(
                                "\$${widget.product_detail_new_price}",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold))),
                      ],
                    ),
                  ),
                ),
              ),
            ),

//=============the first buttons=========================================================

            Row(
              children: <Widget>[
                //============the size button=====================
                Expanded(
                    child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Size"),
                            content: Text("Choose the Size"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Size"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                )),
                //============the size button=====================
                Expanded(
                    child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Colour"),
                            content: Text("Choose a Colour"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Colour"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                )),
                //============the size button=====================
                Expanded(
                    child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Quantity"),
                            content: Text("Choose the Quantity"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Qty"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                )),
              ],
            ),
            //=============the Second buttons=========================================================

            Row(
              children: <Widget>[
                //============the size button=====================
                Expanded(
                    child: MaterialButton(
                        onPressed: () {},
                        color: Colors.purple,
                        textColor: Colors.white,
                        elevation: 0.2,
                        child: new Text("Buy Now"))),
                new IconButton(
                    icon: Icon(
                      Icons.add_shopping_cart,
                      color: Colors.purple,
                    ),
                    onPressed: () {}),
                new IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.purple,
                    ),
                    onPressed: () {}),
              ],
            ),
            Divider(),

            new ListTile(
              title: new Text("Product Details"),
              subtitle: new Text(
                  "A blazer is a type of jacket resembling a suit jacket, but cut more casually. A blazer is generally distinguished from a sport coat as a more formal garment and tailored from solid colour fabrics. Blazers often have naval-style metal buttons to reflect their origins as jackets worn by boating club members."),
            ),
            Divider(),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text(
                    "Product Name",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: new Text(widget.product_detail_name),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text(
                    "Product Brande",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                // REMEMBER TO CREATE PRODUCT BRAND
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: new Text("Brand X"),
                )
              ],
            ),
//======AND THE PRODUCT CONDITION
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text(
                    "Product Condition",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: new Text("New"),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text("Similar Products"),
                ),
//Similar Product Selection
                Container(
                  height: 360.0,
                  child: Similar_Products(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Similar_Products extends StatefulWidget {
  @override
  _Similar_ProductsState createState() => _Similar_ProductsState();
}

class _Similar_ProductsState extends State<Similar_Products> {
  var Product_List = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_Price": 100,
      "price": 85,
    },
    {
      "name": "Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 32,
      "price": 25,
    },
    {
      "name": "Skirt",
      "picture": "images/products/skt1.jpeg",
      "old_price": 50,
      "price": 30,
    },
    {
      "name": "Shoe",
      "picture": "images/products/shoe1.jpg",
      "old_price": 55,
      "price": 25,
    },
    {
      "name": "Hills",
      "picture": "images/products/hills2.jpeg",
      "old_price": 32,
      "price": 22,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: Product_List.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_Single_Prod(
            prod_name: Product_List[index]['name'],
            prod_picture: Product_List[index]['picture'],
            prod_old_price: Product_List[index]['old_price'],
            prod_price: Product_List[index]['price'],
          );
        });
  }
}

class Similar_Single_Prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_Single_Prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("Hero1"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new ProductDetails(
                        //here we are pasiing the values of products to product details
                        product_detail_name: prod_name,
                        product_detail_new_price: prod_price,
                        product_detail_old_price: prod_old_price,
                        product_detail_picture: prod_picture,
                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            prod_name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                        ),
                        new Text(
                          "\$$prod_price",
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
