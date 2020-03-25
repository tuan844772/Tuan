import 'package:flutter/material.dart';
class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart =[
    {
      "name":"Blazer",
      "picture":"assets/images/jpg/AAIPESM.jpeg",
      "price":85,
      "size": "M",
      "color": "Black",
      "quantity": 1,
    },
    {
      "name":"Shoes",
      "picture":"assets/images/jpg/AAIPESM.jpeg",
      "price":50,
      "size": "7",
      "color": "Red",
      "quantity": 1,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (context, index){
        return Single_cart_product(
          cart_prod_name: Products_on_the_cart[index]["name"],
          cart_prod_color: Products_on_the_cart[index]["color"],
          cart_prod_qty: Products_on_the_cart[index]["quantity "],
          cart_prod_size: Products_on_the_cart[index]["size"],
          cart_prod_price: Products_on_the_cart[index]["price "],
          cart_prod_pricture: Products_on_the_cart[index]["picture"],
        );
      },
    );
  }
}
class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_pricture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;
  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_pricture,
    this.cart_prod_price,
    this.cart_prod_color,
    this.cart_prod_size,
    this.cart_prod_qty
});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: new Text(cart_prod_name),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(cart_prod_size),
                ),
               new Padding(padding: const EdgeInsets.fromLTRB(left, top, right, bottom))
              ],
            )
          ],
        ),
      ),
    );
  }
}
