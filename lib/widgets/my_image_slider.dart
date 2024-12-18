import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/data/test_data.dart';

class MyImageSlider extends StatelessWidget {
  const MyImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24, bottom: 46),
      child: CarouselSlider(
          items: imagesList.map((e) {
            return Container(
              margin:
                  const EdgeInsets.only(left: 4, right: 4),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(4)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: SizedBox.fromSize(
                      child: Image.asset(
                    e,
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ))),
            );
          }).toList(),
          options: CarouselOptions(
            height: 158,
            aspectRatio: 16 / 9,
            viewportFraction: 0.9,
            initialPage: 0,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.ease,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
            pageSnapping: true,
            onPageChanged: (index, reason) {},
          )),
    );
  }
}
