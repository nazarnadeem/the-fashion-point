import 'package:flutter/material.dart';

//my imports
import 'package:the_fashion_point/components/products.dart';
import 'package:the_fashion_point/main.dart';

class ProductDetails extends StatelessWidget {
  final product_details_name;
  final product_details_image;
  final product_details_old_price;
  final product_details_price;

  ProductDetails(
      {this.product_details_name,
      this.product_details_image,
      this.product_details_old_price,
      this.product_details_price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
          child: Text("The Fashion Point"),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300.0,
            color: Colors.white,
            child: GridTile(
              footer: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        product_details_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "₹" + product_details_old_price,
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "₹" + product_details_price,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              child: Image.network(product_details_image),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Size"),
                              content: Text("Please choose a size"),
                              actions: [
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text("Close"),
                                ),
                              ],
                            );
                          });
                    },
                    elevation: 0,
                    textColor: Colors.grey,
                    child: Row(
                      children: [
                        Text("Size"),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                    color: Colors.white),
              ),
              Expanded(
                child: MaterialButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Color"),
                            content: Text("Please choose a color"),
                            actions: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Close"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    elevation: 0,
                    textColor: Colors.grey,
                    child: Row(
                      children: [
                        Text("Color"),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                    color: Colors.white),
              ),
              Expanded(
                child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Quantity"),
                              content: Text("Please choose a quantity"),
                              actions: [
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text("Close"),
                                ),
                              ],
                            );
                          });
                    },
                    elevation: 0,
                    textColor: Colors.grey,
                    child: Row(
                      children: [
                        Text("Qty"),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                    color: Colors.white),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  elevation: 0,
                  textColor: Colors.white,
                  color: Colors.red,
                  child: Text("Buy Now"),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                elevation: 0,
                textColor: Colors.red,
                child: Icon(Icons.shopping_cart),
              ),
              MaterialButton(
                onPressed: () {},
                elevation: 0,
                textColor: Colors.red,
                child: Icon(Icons.favorite),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 8, 8, 2),
            child: Text(
              "Product Details:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Product Name:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              Text(product_details_name),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Product Brand:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              Text("watches"),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Product Condition:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              Text("New"),
            ],
          ),
          Divider(
            color: Colors.red,
          ),
          Container(
            height: 320,
            child: SimilarProducts(),
          ),
        ],
      ),
    );
  }
}

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var similar_product_list = [
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
        itemCount: similar_product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            product_name: similar_product_list[index]['name'],
            product_image: similar_product_list[index]['image'],
            product_old_price: similar_product_list[index]['old_price'],
            product_price: similar_product_list[index]['price'],
          );
        });
  }
}

class SingleSimilarProduct extends StatelessWidget {
  final similar_product_name;
  final similar_product_image;
  final similar_product_old_price;
  final similar_product_price;

  SingleSimilarProduct(
      {this.similar_product_name,
      this.similar_product_image,
      this.similar_product_old_price,
      this.similar_product_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.white,
      elevation: 10.0,
      child: Hero(
        tag: similar_product_name,
        child: InkWell(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ProductDetails(
                product_details_name: similar_product_name,
                product_details_image: similar_product_image,
                product_details_old_price: similar_product_old_price,
                product_details_price: similar_product_price,
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
                      similar_product_name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13.5,
                      ),
                    ),
                  ),
                  Text(
                    "₹" + similar_product_price,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13.5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            child: Image.network(similar_product_image),
          ),
        ),
      ),
    );
  }
}
