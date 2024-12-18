import 'package:flutter/material.dart';
import 'package:untitled3/data/test_data.dart';
import 'package:untitled3/widgets/Recommended.dart';
import 'package:untitled3/widgets/markets.dart';
import 'package:untitled3/widgets/most_saller.dart';
import 'package:untitled3/widgets/my_image_slider.dart';
import 'package:untitled3/widgets/offers.dart';
import 'package:untitled3/widgets/popular.dart';
import 'package:untitled3/widgets/recommended_clothes.dart';
import 'package:untitled3/data/test_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor_grey,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            header(),
            MyImageSlider(),
            MostSaller(),
            const SizedBox(
              height: 24,
            ),
            Recommended(),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 23, left: 19),
              child: Image.asset(
                "assets/images/offer.png",
              ),
            ),
            SizedBox(
              height: 18.33,
            ),
            Offers(),
            SizedBox(
              height: 18,
            ),
            Popular(),
            SizedBox(
              height: 24,
            ),
            RecommendedClothes(),
            SizedBox(
              height: 53,
            )
          ],
        ),
      ),
    );
  }

  Widget header() {
    return Stack(
      children: [
        Container(
          color: black1,
          height: 471,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 38, left: 20, right: 16),
          child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/tkr1.png",
                  width: 83,
                  height: 38.96,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none_outlined,
                      color: Color(0xffFEFEFE),
                      size: 24,
                    ))
              ]),
        ),
        Padding(
          padding: EdgeInsets.only(top: 101),
          child: Column(
            children: [
              Image.asset(
                "assets/images/top.png",
                width: double.maxFinite,
              ),
              const SizedBox(
                height: 21,
              ),
              const Text(
                "اشتري ما يعجبك",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              const Text(
                "ادفع كما تحب .",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 27,
              ),
              Container(
                margin: EdgeInsets.only(left: 18.5, right: 21.5),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: const Color(0xffB8B8B8).withOpacity(0.10),
                        blurRadius: 23,
                        offset: Offset(0, 11)),
                    BoxShadow(
                        color: const Color(0xffB8B8B8).withOpacity(0.09),
                        blurRadius: 43,
                        offset: Offset(0, 43)),
                  ],
                  color: const Color(0xffFEFEFE),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "قم بالبحث",
                        prefixIcon: Icon(
                          Icons.search_outlined,
                          color: Color(0xffACACAB),
                        ),
                        border: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(
                height: 55,
              ),
              Markets(),
            ],
          ),
        ),
      ],
    );
  }
}


