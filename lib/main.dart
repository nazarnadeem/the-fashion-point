import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my imports
import 'package:the_fashion_point/components/horizontal_list_view.dart';
import 'package:the_fashion_point/components/products.dart';
import 'package:the_fashion_point/pages/cart.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 300.0,
      child: Carousel(
        radius: Radius.circular(10.0),
        borderRadius: true,
        dotSize: 4.0,
        autoplay: false,
        dotColor: Colors.red,
        dotBgColor: Colors.transparent,
        images: [
          Image.network(
            "https://images.unsplash.com/photo-1535585209827-a15fcdbc4c2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://images.unsplash.com/photo-1555487505-8603a1a69755?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://images.unsplash.com/photo-1615306119247-67565da835da?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://images.unsplash.com/photo-1515955656352-a1fa3ffcd111?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: Text("The Fashion Point"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cart(),
                  ));
            },
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              accountName: Text("Nazar Nadeem"),
              accountEmail: Text("nazarnadeem327@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.red,
                    size: 35.0,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                title: Text("Home"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.shopping_bag,
                  color: Colors.red,
                ),
                title: Text("Orders"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
                title: Text("Account"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                title: Text("Favourites"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.category,
                  color: Colors.red,
                ),
                title: Text("Categories"),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                title: Text("Settings"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.green,
                ),
                title: Text("About"),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          image_carousel,
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          // Horizontal list view (categories)
          HorizontalListView(),
          Padding(
            padding: EdgeInsets.all(9.0),
            child: Text(
              "Recent Products",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 320.0,
            child: Products(),
          ),
        ],
      ),
    );
  }
}
