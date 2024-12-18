import 'package:flutter/material.dart';
import 'package:untitled3/data/categories.dart';
import 'package:untitled3/screens/home_page.dart';


class Popular extends StatelessWidget {
  Popular({
    super.key,
  });
  List<Category> Categories = [
    Category("assets/images/recom.png", "موصى بها"),
    Category("assets/images/clothes.png", "الملابس"),
    Category("assets/images/nasa.png", "كهربائيات"),
    Category("assets/images/clothes.png", "الملابس"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 40),
          alignment: Alignment.centerRight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "المنتجات الرائجة في",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
              ),
              Image.asset(
                "assets/images/tkram.png",
                width: 72,
                height: 35,
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          height: 160,
          child: ListView.builder(
              padding: EdgeInsets.only(left: 20),
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) => MyCard(Categories[index])),
        ),
      ],
    );
  }

  Widget MyCard(Category category) {
    return Container(
      height: 160,
      width: 118,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 19),
      margin: EdgeInsets.only(right: 13),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: Colors.white),
      child: Column(
        children: [
          Image.asset(category.image),
          SizedBox(
            height: 16,
          ),
          Text(
            category.name,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.blue[400]),
          ),
        ],
      ),
    );
  }
}
