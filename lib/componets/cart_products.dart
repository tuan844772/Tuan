import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "assets/images/jpg/AAIPESM.jpeg",
      "price": 85,
      "size": "M",
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "Shoes",
      "picture": "assets/images/jpg/AAIPESM.jpeg",
      "price": 50,
      "size": "7",
      "color": "Red",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (context, index) {
        return Single_cart_product(
          cart_prod_name: Products_on_the_cart[index]["name"],
          cart_prod_color: Products_on_the_cart[index]["color"],
          cart_prod_qty: Products_on_the_cart[index]["quantity"],
          cart_prod_size: Products_on_the_cart[index]["size"],
          cart_prod_price: Products_on_the_cart[index]["price"],
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

  Single_cart_product(
      {this.cart_prod_name,
      this.cart_prod_pricture,
      this.cart_prod_price,
      this.cart_prod_color,
      this.cart_prod_size,
      this.cart_prod_qty});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(
          cart_prod_pricture,
          width: 80.0,
          height: 80.0,
        ),
        title: new Text(cart_prod_name),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size:", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Text(
                    cart_prod_size,
                    style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 2.0, 2.0, 2.0),
                  child: new Text("Color:", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Text(
                    cart_prod_color,
                    style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
              ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$${cart_prod_price}",
                style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ],
        ),
        trailing: new Column(
          children: <Widget>[
            Expanded(child: new IconButton(icon: Icon(Icons.arrow_drop_up),iconSize: 20.0, onPressed: () {

            }),flex: 1,),
            new Text("$cart_prod_qty", style: TextStyle(fontSize: 10.0),),
            Expanded(child: new IconButton(icon: Icon(Icons.arrow_drop_down),iconSize: 20.0, onPressed: () {
              
            }),flex: 1,)
          ],
        ),
      ),
    );

  }

}
