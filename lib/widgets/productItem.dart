import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled3/controllers/home_page_provider.dart';
import 'package:untitled3/data/product.dart';
import 'package:untitled3/data/test_data.dart';

class productItem extends StatelessWidget {
  final Product product;
  const productItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 159,
      margin: EdgeInsets.only(right: 8),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Stack(
          textDirection: TextDirection.rtl,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6), topRight: Radius.circular(6)),
                child: Image.asset(
                  product.image,
                  height: 144,
                  width: 159,
                )),
            product.isTopRate!
                ? Positioned(
                    top: 8,
                    right: 6.33,
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
              top: 8,
              left: 8,
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
          // height: 104,
          // width: 159,
          padding: EdgeInsets.fromLTRB(5, 6, 5, 8),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(6),
                  bottomRight: Radius.circular(6))),
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
                    fontSize: 16, fontWeight: FontWeight.w600, color: black1),
              ),
              SizedBox(
                height: 20,
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
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: black1),
                    ),
                    product.oldPrice != null
                        ? Text(
                            "${product.oldPrice} ل.س ",
                            style: TextStyle(
                                fontSize: 10,
                                decoration: TextDecoration.lineThrough,
                                decorationColor: Color(0xffA7A6A6),
                                fontWeight: FontWeight.w500,
                                color: Color(0xffA7A6A6)),
                          )
                        : Container(),
                  ],
                ),
              ),
              SizedBox(
                height: 6,
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
                            fontSize: 10,
                            color: Color(0xffF7D046),
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "(300)",
                        style: TextStyle(
                            color: Color(0xffA7A6A6),
                            fontSize: 10,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffBBBBBB),
                        ),
                        borderRadius: BorderRadius.circular(6)),
                    child: Text(
                      product.marketName!,
                      style:
                          TextStyle(color: Color(0xffBBBBBB), fontSize: 7.79),
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
}
