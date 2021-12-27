import 'package:flutter/material.dart';

//my imports
import 'package:the_fashion_point/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Apple Watch",
      "image":
          "https://images.unsplash.com/photo-1546868871-7041f2a55e12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "old_price": "450",
      "price": "200",
    },
    {
      "name": "Screen Glass",
      "image":
          "https://images.unsplash.com/photo-1511499767150-a48a237f0083?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
      "old_price": "450",
      "price": "200",
    },
    {
      "name": "Screen Glass",
      "image":
          "https://images.unsplash.com/photo-1511499767150-a48a237f0083?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
      "old_price": "450",
      "price": "200",
    },
    {
      "name": "Apple Watch",
      "image":
          "https://images.unsplash.com/photo-1546868871-7041f2a55e12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "old_price": "450",
      "price": "200",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            product_name: product_list[index]['name'],
            product_image: product_list[index]['image'],
            product_old_price: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        });
  }
}

class SingleProduct extends StatelessWidget {
  final product_name;
  final product_image;
  final product_old_price;
  final product_price;

  SingleProduct(
      {this.product_name,
      this.product_image,
      this.product_old_price,
      this.product_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.white,
      elevation: 10.0,
      child: Hero(
        tag: product_name,
        child: InkWell(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ProductDetails(
                product_details_name: product_name,
                product_details_image: product_image,
                product_details_old_price: product_old_price,
                product_details_price: product_price,
              ),
            ),
          ),
          child: GridTile(
            footer: Container(
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      product_name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13.5,
                      ),
                    ),
                  ),
                  Text(
                    "₹" + product_price,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13.5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            child: Image.network(product_image),
          ),
        ),
      ),
    );
  }
}
