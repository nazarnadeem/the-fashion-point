import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            category_image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG1JwpE2uiFMQe8MdcSbhtWYFhInZS6XJBjVN6NKfy6OElabHS-7iuM5CM91W-c4MrFDY&usqp=CAU",
            category_name: "Shoes",
          ),
          Category(
            category_image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG1JwpE2uiFMQe8MdcSbhtWYFhInZS6XJBjVN6NKfy6OElabHS-7iuM5CM91W-c4MrFDY&usqp=CAU",
            category_name: "Shoes",
          ),
          Category(
            category_image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG1JwpE2uiFMQe8MdcSbhtWYFhInZS6XJBjVN6NKfy6OElabHS-7iuM5CM91W-c4MrFDY&usqp=CAU",
            category_name: "Shoes",
          ),
          Category(
            category_image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG1JwpE2uiFMQe8MdcSbhtWYFhInZS6XJBjVN6NKfy6OElabHS-7iuM5CM91W-c4MrFDY&usqp=CAU",
            category_name: "Shoes",
          ),
          Category(
            category_image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG1JwpE2uiFMQe8MdcSbhtWYFhInZS6XJBjVN6NKfy6OElabHS-7iuM5CM91W-c4MrFDY&usqp=CAU",
            category_name: "Shoes",
          ),
          Category(
            category_image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG1JwpE2uiFMQe8MdcSbhtWYFhInZS6XJBjVN6NKfy6OElabHS-7iuM5CM91W-c4MrFDY&usqp=CAU",
            category_name: "Shoes",
          ),
          Category(
            category_image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG1JwpE2uiFMQe8MdcSbhtWYFhInZS6XJBjVN6NKfy6OElabHS-7iuM5CM91W-c4MrFDY&usqp=CAU",
            category_name: "Shoes",
          ),
          Category(
            category_image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG1JwpE2uiFMQe8MdcSbhtWYFhInZS6XJBjVN6NKfy6OElabHS-7iuM5CM91W-c4MrFDY&usqp=CAU",
            category_name: "Shoes",
          ),
          Category(
            category_image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG1JwpE2uiFMQe8MdcSbhtWYFhInZS6XJBjVN6NKfy6OElabHS-7iuM5CM91W-c4MrFDY&usqp=CAU",
            category_name: "Shoes",
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final category_name;
  final category_image;

  Category({this.category_name, this.category_image});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 90.0,
      child: InkWell(
        onTap: () {},
        child: ListTile(
          title: Container(
            child: Image.network(
              category_image,
              height: 60.0,
            ),
          ),
          subtitle: Text(
            category_name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
