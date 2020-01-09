import 'package:flutter/material.dart';
import 'package:flutter_shopapp/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
      "name": "Pants",
      "picture": "images/products/pants1.jpg",
      "old_price": 32,
      "price": 25,
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
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_Prod(
              prod_name: Product_List[index]['name'],
              prod_picture: Product_List[index]['picture'],
              prod_old_price: Product_List[index]['old_price'],
              prod_price: Product_List[index]['price'],
            ),
          );
        });
  }
}

class Single_Prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_Prod({
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
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),
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
