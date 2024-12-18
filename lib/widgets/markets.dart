import 'package:flutter/material.dart';
import 'package:untitled3/data/test_data.dart';

class Markets extends StatelessWidget {
  const Markets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 13, right: 7, left: 9),
      alignment: Alignment.bottomRight,
      width: double.infinity,
      height: 303,
      decoration: const BoxDecoration(
        color: Color(0xffFBF9F9),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "لك خصيصاً",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
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
                    MarketsList[index].image, MarketsList[index].name)),
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
    );
  }

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
      child: const Column(
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
