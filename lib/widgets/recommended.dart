import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled3/controllers/home_page_provider.dart';
import 'package:untitled3/widgets/productItem.dart';

class Recommended extends StatelessWidget {
  Recommended({
    super.key,
  });

  // List<Product> products = [
  //   Product(
  //       image: "assets/images/product2.png",
  //       price: 300,
  //       stars: 5,
  //       numRating: 302,
  //       isTopRate: true,
  //       // oldPrice: 800,
  //       marketName: "السباعي للعطور",
  //       desc: "هودي كبيرة سادة مع صورة من اختيارك يا حلو يا جميل",
  //       offerTitle: "وفر 100 ألف ل س (300%)"),
  //   Product(
  //       image: "assets/images/product3.png",
  //       price: 300,
  //       stars: 4,
  //       isTopRate: false,
  //       oldPrice: 800,
  //       numRating: 302,
  //       desc: "pewdiepie protien shaker",
  //       marketName: "pewdiepie",
  //       offerTitle: "وفر 100 ألف ل س (300%)"),
  //   Product(
  //       image: "assets/images/product2.png",
  //       price: 300,
  //       stars: 4,
  //       isTopRate: true,
  //       oldPrice: 800,
  //       numRating: 302,
  //       desc: "شاشة تريفيو 24 بوصة سمارت بوكس هاي دفنشن كلرز",
  //       marketName: "Alaa",
  //       offerTitle: "وفر 100 ألف ل س (300%)"),
  // ];

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<HomePageProvider>(context);
    List products = prov.recommendedProducts;
    return Padding(
      padding: EdgeInsets.only(left: 19),
      child: Column(
        children: [
          title(),
          SizedBox(
            height: 18,
          ),
          Container(
            height: 260,
            child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) =>
                    productItem(product: products[index])),
          ),
        ],
      ),
    );
  }

  Widget title() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        padding: EdgeInsets.only(right: 21),
        alignment: Alignment.centerRight,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "مقترحة لك",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
            GestureDetector(
              child: Row(
                children: [
                  Text(
                    "عرض الكل",
                    style: TextStyle(color: Colors.blue[600], fontSize: 14),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.blue[600],
                    size: 12,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
