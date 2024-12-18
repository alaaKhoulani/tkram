import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/data/test_data.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<String> images = [
    "assets/images/c0.png",
    "assets/images/c1.png",
    "assets/images/c2.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: backgroundColor_grey,
        body: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                  items: images.map((e) {
                    return Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).width,
                      child: Image.asset(
                        e,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    aspectRatio: 1.0,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                    pageSnapping: true,
                    onPageChanged: (index, reason) {},
                  )),
              Container(
                padding: EdgeInsets.fromLTRB(20, 16, 22, 16.33),
                margin: EdgeInsets.only(bottom: 6),
                color: Colors.white,
                child: Column(
                  children: [
                    Text(
                      "Vinland Saga Hoodies - Vinland Saga Harajuku Aesthetic Printed Hoodie",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(
                        children: [
                          Text(
                            "300 ألف ل.س ",
                            textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: black1),
                          ),
                          Text(
                            "800 ل.س ",
                            style: TextStyle(
                                fontSize: 10,
                                decoration: TextDecoration.lineThrough,
                                decorationColor: Color(0xffA7A6A6),
                                fontWeight: FontWeight.w500,
                                color: Color(0xffA7A6A6)),
                          ),
                          Spacer(),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 11),
                              decoration: BoxDecoration(
                                  color: Color(0xffEFFBF5),
                                  borderRadius: BorderRadius.circular(2)),
                              child: Text(
                                "وفر 30%",
                                style: TextStyle(
                                    color: Color(0xff1F7046),
                                    fontSize: 12,
                                    //todo font family
                                    fontWeight: FontWeight.w400),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(top: 16),
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "المقاس",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: sizes
                            .map((e) => Container(
                                  //todo size
                                  // width: 63,
                                  // height: 59,
                                  margin: EdgeInsets.only(left: 8),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 27, vertical: 23),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border:
                                          Border.all(color: Color(0xffD1CFCF))),
                                  child: Text(
                                    e,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ))
                            .toList(),
                      )
                    ]),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(top: 16),
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "الألوان",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: colors
                            .map((e) => Container(
                                  // todo size
                                  width: 63,
                                  height: 59,
                                  margin: EdgeInsets.only(left: 8),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 27, vertical: 23),
                                  decoration: BoxDecoration(
                                      color: e,
                                      borderRadius: BorderRadius.circular(4),
                                      border:
                                          Border.all(color: Color(0xffD1CFCF))),
                                ))
                            .toList(),
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Color> colors = [
    Colors.black,
    Colors.white,
    Color(0xff303146),
    Colors.red
  ];
  List<String> sizes = ["S", "M", "L", "XL"];
}
