import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled3/controllers/home_page_provider.dart';
import 'package:untitled3/data/product.dart';
import 'package:untitled3/data/test_data.dart';

class Offers extends StatelessWidget {
  Offers({
    super.key,
  });

  // List<Product> products = [
  //   Product(
  //       image: "assets/images/product4.png",
  //       price: 300,
  //       stars: 5,
  //       numRating: 302,
  //       isTopRate: true,
  //       // oldPrice: 800,
  //       marketName: "السباعي للعطور",
  //       desc: "هودي كبيرة سادة مع صورة من اختيارك يا حلو يا جميل",
  //       offerTitle: "وفر 100 ألف ل س (300%)"),
  //   Product(
  //       image: "assets/images/product4.png",
  //       price: 300,
  //       stars: 5,
  //       isTopRate: true,
  //       numRating: 302,

  //       // oldPrice: 800,
  //       marketName: "السباعي للعطور",
  //       desc: "هودي كبيرة سادة مع صورة من اختيارك يا حلو يا جميل",
  //       offerTitle: "وفر 100 ألف ل س (300%)"),
  //   Product(
  //       image: "assets/images/product4.png",
  //       price: 300,
  //       stars: 4,
  //       numRating: 302,
  //       isTopRate: false,
  //       oldPrice: 800,
  //       desc: "pewdiepie protien shaker",
  //       marketName: "pewdiepie",
  //       offerTitle: "وفر 100 ألف ل س (300%)"),
  //   Product(
  //       image: "assets/images/product4.png",
  //       price: 300,
  //       stars: 4,
  //       isTopRate: true,
  //       numRating: 302,
  //       oldPrice: 800,
  //       desc: "شاشة تريفيو 24 بوصة سمارت بوكس هاي دفنشن كلرز",
  //       marketName: "Alaa",
  //       offerTitle: "وفر 100 ألف ل س (300%)"),
  // ];

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<HomePageProvider>(context);
    List products = prov.offersList;
    return Container(
      height: 710,
      padding: EdgeInsets.symmetric(vertical: 9, horizontal: 19),
      color: Color(0xffDEF1FF),
      child: Column(
        children: [
          title(),
          SizedBox(
            height: 38,
          ),
          Container(
            height: 622,
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              childAspectRatio: 0.56,
              padding: EdgeInsets.zero,
              crossAxisSpacing: 14,
              mainAxisSpacing: 14,
              crossAxisCount: 2,
              children: products.map((e) => productItem(context, e)).toList(),
            ),
          )
          // Container(
          //   height: 610,
          //   child: GridView.builder(
          //       padding: EdgeInsets.zero,
          //       itemCount: 4,
          //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 2,
          //         // mainAxisSpacing: 14,
          //         crossAxisSpacing: 14,
          //         childAspectRatio: 0.56,
          //       ),
          //       itemBuilder: (context, index) => productItem(products[index])),
          // ),
          // productItem(products[0])
        ],
      ),
    );
  }

  Widget productItem(BuildContext context, Product product) {
    return Container(
      width: 186,
      height: 290,
      // color: Colors.red,
      // margin: EdgeInsets.only(top: 2),
      child: Column(children: [
        Stack(
          textDirection: TextDirection.rtl,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7.02),
                    topRight: Radius.circular(7.02)),
                child: Image.asset(
                  product.image,
                  height: 168,
                  width: 186,
                  fit: BoxFit.fill,
                )),
            product.isTopRate!
                ? Positioned(
                    top: 9.36,
                    right: 8,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 6.46, vertical: 3.52),
                      // height: 12.04,
                      // width: 50.91,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.17),
                          color: Color(0xffFFE099)),
                      child: Text("الأعلى تصنيفاً",
                          style: TextStyle(
                              color: Color(0xffD8A329),
                              fontSize: 7.04,
                              fontWeight: FontWeight.w600)),
                    ),
                  )
                : Container(),
            Positioned(
              top: 9.36,
              left: 9.36,
              child: GestureDetector(
                onTap: () {
                  Provider.of<HomePageProvider>(context, listen: false)
                      .favorite(product, !product.isFavorite);
                },
                child: product.isFavorite
                    ? Icon(
                        Icons.favorite_rounded,
                        color: Colors.red,
                        size: 20,
                        weight: 2,
                      )
                    : Icon(
                        Icons.favorite_border_rounded,
                        color: Colors.white,
                        size: 20,
                        weight: 2,
                      ),
              ),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.fromLTRB(5.85, 7, 5.85, 10.11),
          // height: 121,
          // width: 159,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(7.02),
                  bottomRight: Radius.circular(7.02))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                product.desc,
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w600, color: black1),
              ),
              SizedBox(
                height: 23.41,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: [
                    Text(
                      "${product.price} ألف ل.س ",
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontSize: 14.04,
                          fontWeight: FontWeight.w700,
                          color: black1),
                    ),
                    // product.oldPrice != null
                    //     ? Text(
                    //         "${product.oldPrice} ل.س ",
                    //         style: TextStyle(
                    //             fontSize: 10,
                    //             decoration: TextDecoration.lineThrough,
                    //             decorationColor: Color(0xffA7A6A6),
                    //             fontWeight: FontWeight.w500,
                    //             color: Color(0xffA7A6A6)),
                    //       )
                    //     : Container(),
                  ],
                ),
              ),
              SizedBox(
                height: 7.02,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: Color(0xffF7D046),
                        size: 12,
                      ),
                      Text(
                        product.stars.toString(),
                        style: TextStyle(
                            fontSize: 11.7,
                            color: Color(0xffF7D046),
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "(300)",
                        style: TextStyle(
                            color: Color(0xffA7A6A6),
                            fontSize: 11.7,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffBBBBBB),
                        ),
                        borderRadius: BorderRadius.circular(6)),
                    child: Text(
                      product.marketName!,
                      style:
                          TextStyle(color: Color(0xffBBBBBB), fontSize: 9.12),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }

  Widget title() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        // height: 45,
        padding: EdgeInsets.only(right: 21),
        alignment: Alignment.centerRight,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "عروض تكرم",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.blue[900]),
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
