import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var cart_product_list = [
    {
      "name": "Apple Watch",
      "image":
          "https://images.unsplash.com/photo-1546868871-7041f2a55e12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "price": "200",
      "size": "M",
      "color": "white",
      "quantity": 1,
    },
    {
      "name": "Screen Glass",
      "image":
          "https://images.unsplash.com/photo-1511499767150-a48a237f0083?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
      "price": "200",
      "size": "L",
      "color": "Black",
      "quantity": 1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cart_product_list.length,
        itemBuilder: (context, index) => SingleCartProduct(
              cart_product_name: cart_product_list[index]['name'],
              cart_product_image: cart_product_list[index]['image'],
              cart_product_price: cart_product_list[index]['price'],
              cart_product_size: cart_product_list[index]['size'],
              cart_product_color: cart_product_list[index]['color'],
              cart_product_quantity: cart_product_list[index]['quantity'],
            ));
  }
}

class SingleCartProduct extends StatelessWidget {
  final cart_product_name;
  final cart_product_image;
  final cart_product_price;
  final cart_product_size;
  final cart_product_color;
  final cart_product_quantity;

  SingleCartProduct(
      {this.cart_product_name,
      this.cart_product_image,
      this.cart_product_price,
      this.cart_product_size,
      this.cart_product_color,
      this.cart_product_quantity});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(
          cart_product_image,
          height: 50.0,
          width: 50.0,
        ),
        title: Text(cart_product_name),
        subtitle: Column(
          children: [
            Row(
              children: [
                // ==================Product size section ==============
                Text("Size:"),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    cart_product_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                // ==================Product color section ==============
                Padding(
                  padding: EdgeInsets.fromLTRB(30.0, 8.0, 8.0, 8.0),
                  child: Text("Color:"),
                ),
                Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Text(
                    cart_product_color,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            // ==================Product price section ==============
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                "₹" + cart_product_price,
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
