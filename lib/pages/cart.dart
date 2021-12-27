import 'package:flutter/material.dart';
import 'package:the_fashion_point/components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: Center(
          child: Text("The Fashion Point"),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                title: Text("Total"),
                subtitle: Text("₹200"),
              ),
            ),
            Expanded(
              child: (MaterialButton(
                onPressed: () {},
                color: Colors.red,
                textColor: Colors.white,
                child: Text("Check out"),
              )),
            ),
          ],
        ),
      ),
      body: CartProducts(),
    );
  }
}
