import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:untitled3/controllers/home_page_provider.dart';
import 'package:untitled3/data/product.dart';
import 'package:untitled3/data/test_data.dart';
import 'package:provider/provider.dart';

class MostSaller extends StatelessWidget {
  MostSaller({
    super.key,
  });
  // List products = [
  //   Product(
  //       image: "assets/images/product1.png",
  //       price: 300,
  //       stars: 4,
  //       oldPrice: 800,
  //       desc: "شاشة تريفيو 24 بوصة سمارت بوكس هاي دفنشن كلرز",
  //       numRating: 302,
  //       offerTitle: "وفر 100 ألف ل س (300%)"),
  //   Product(
  //       image: "assets/images/product1.png",
  //       price: 300,
  //       stars: 3,
  //       oldPrice: 800,
  //       numRating: 302,
  //       desc: "شاشة تريفيو 24 بوصة سمارت بوكس هاي دفنشن كلرز",
  //       offerTitle: "وفر 100 ألف ل س (300%)"),
  //   Product(
  //       image: "assets/images/product1.png",
  //       price: 300,
  //       stars: 1,
  //       oldPrice: 800,
  //       numRating: 302,
  //       desc: "شاشة تريفيو 24 بوصة سمارت بوكس هاي دفنشن كلرز",
  //       offerTitle: "وفر 100 ألف ل س (300%)"),
  // ];

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<HomePageProvider>(context);
    List products = prov.mostSallerProducts;
    return Padding(
      padding: const EdgeInsets.only(left: 19),
      child: Column(
        children: [
          title(),
          Container(
              height: 360,
              margin: EdgeInsets.only(top: 18),
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, index) =>
                      productItem(context, products[index])))
        ],
      ),
    );
  }

  Widget productItem(BuildContext context, Product product) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        // height: 344,
        width: 342,
        margin: EdgeInsets.only(right: 8.0),
        padding: EdgeInsets.fromLTRB(21, 32, 21, 16),
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              product.image,
              height: 166,
              width: 218,
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 51,
              child: Text(
                product.desc,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ),
            Row(
              children: [
                Text(
                  "السعر: ${product.price} ل.س ",
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w700, color: black1),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "${product.price} ل.س ",
                  style: const TextStyle(
                      fontSize: 14,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Color(0xffA7A6A6),
                      fontWeight: FontWeight.w700,
                      color: Color(0xffA7A6A6)),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            rating(context, product),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text((product.offerTitle!)),
                  Container(
                    // height: 20,
                    alignment: Alignment.topCenter,
                    width: 86,
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                    decoration: BoxDecoration(
                        color: Color(0xff0A2463),
                        borderRadius: BorderRadius.circular(4)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "توصية ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        Image.asset(
                          "assets/images/tkr blue.png",
                          height: 11.67,
                          width: 24,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget rating(BuildContext context, Product product) {
    return Row(
      children: [
        Text(
          "(${product.numRating.toInt()})${product.stars.toInt()}",
          style: TextStyle(
              color: Color(0xffA7A6A6),
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        RatingStars(
          starSize: 16,
          value: product.stars,
          starCount: 5,
          valueLabelTextStyle: TextStyle(
            color: Color(0xffA7A6A6),
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
          valueLabelColor: Colors.transparent,
          maxValueVisibility: false,
          valueLabelVisibility: false,
          onValueChanged: (value) {
            Provider.of<HomePageProvider>(context, listen: false)
                .changeRating(product, value);
          },
        ),
      ],
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
              "الأكثر مبيعاً",
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
