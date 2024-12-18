import 'package:flutter/material.dart';
import 'package:untitled3/data/categories.dart';
import 'package:untitled3/data/test_data.dart';
import 'package:untitled3/widgets/Recommended.dart';
import 'package:untitled3/widgets/most_saller.dart';
import 'package:untitled3/widgets/my_image_slider.dart';
import 'package:untitled3/widgets/offers.dart';

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
      backgroundColor: Color(0xffFBF9F9),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
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
                                color:
                                    const Color(0xffB8B8B8).withOpacity(0.10),
                                blurRadius: 23,
                                offset: Offset(0, 11)),
                            BoxShadow(
                                color:
                                    const Color(0xffB8B8B8).withOpacity(0.09),
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
                      Container(
                        padding:
                            const EdgeInsets.only(top: 13, right: 7, left: 9),
                        alignment: Alignment.bottomRight,
                        width: double.infinity,
                        height: 303,
                        decoration: const BoxDecoration(
                          color: Color(0xffFBF9F9),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)),
                        ),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 16),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "لك خصيصاً",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 24),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 28,
                            ),
                            Expanded(
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 6,
                                  itemBuilder: (context, index) => MarketItem(
                                      MarketsList[index].image,
                                      MarketsList[index].name)),
                            ),
                            Expanded(
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 6,
                                  itemBuilder: (context, index) => index < 5
                                      ? MarketItem(MarketsList[6 + index].image,
                                          MarketsList[6 + index].name)
                                      : allMarket()),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
            const SizedBox(
              height: 24,
            ),
            MyImageSlider(),
            SizedBox(
              height: 46,
            ),
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
                // width: 386,
                // height: 74,
              ),
            ),
            SizedBox(
              height: 18.33,
            ),
            Offers(),
            SizedBox(
              height: 18,
            ),
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
            ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) => Card(Categories[index])),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }

  Widget Card(Category category) {
    return Container(
      height: 160,
      width: 118,
      padding: EdgeInsets.symmetric(horizontal: 33, vertical: 19),
      child: Column(
        children: [
          Image.asset(category.image),
          Text(
            category.name,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.blue[400]),
          ),
        ],
      ),
    );
  }

  List<Category> Categories = [
    Category("assets/images/recom.png", "موصى بها"),
    Category("assets/images/elect.png", "كهربائيات"),
    Category("assets/images/clothes.png", "الملابس"),
    Category("assets/images/clothes.png", "الملابس"),
  ];

  Widget MarketItem(String image, String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 7.0, right: 7.0),
      child: GestureDetector(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.red,
              backgroundImage: AssetImage(image),
              radius: 27,
            ),
            SizedBox(
              width: 54,
              child: Center(
                child: Text(title,
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget allMarket() {
    return GestureDetector(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            // backgroundImage: AssetImage(image),
            child: Icon(Icons.arrow_forward_ios_sharp),
            radius: 27,
          ),
          SizedBox(
            width: 54,
            child: Text("كل المحال",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          )
        ],
      ),
    );
  }
}
