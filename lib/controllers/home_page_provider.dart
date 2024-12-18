import 'package:flutter/material.dart';
import 'package:untitled3/data/product.dart';

class HomePageProvider with ChangeNotifier {
  List<Product> mostSallerProducts = [
    Product(
        image: "assets/images/product1.png",
        price: 300,
        stars: 4,
        oldPrice: 800,
        desc: "شاشة تريفيو 24 بوصة سمارت بوكس هاي دفنشن كلرز",
        numRating: 302,
        offerTitle: "وفر 100 ألف ل س (300%)"),
    Product(
        image: "assets/images/product1.png",
        price: 300,
        stars: 3,
        oldPrice: 800,
        numRating: 302,
        desc: "شاشة تريفيو 24 بوصة سمارت بوكس هاي دفنشن كلرز",
        offerTitle: "وفر 100 ألف ل س (300%)"),
    Product(
        image: "assets/images/product1.png",
        price: 300,
        stars: 1,
        oldPrice: 800,
        numRating: 302,
        desc: "شاشة تريفيو 24 بوصة سمارت بوكس هاي دفنشن كلرز",
        offerTitle: "وفر 100 ألف ل س (300%)"),
  ];

  List<Product> recommendedClothesList = [
    Product(
        image: "assets/images/product2.png",
        price: 300,
        numRating: 302,
        stars: 5,
        isTopRate: true,
        // oldPrice: 800,
        marketName: "السباعي للعطور",
        desc: "هودي كبيرة سادة مع صورة من اختيارك يا حلو يا جميل",
        offerTitle: "وفر 100 ألف ل س (300%)"),
    Product(
        image: "assets/images/product3.png",
        price: 300,
        stars: 4,
        isTopRate: false,
        numRating: 302,
        oldPrice: 800,
        desc: "pewdiepie protien shaker",
        marketName: "pewdiepie",
        offerTitle: "وفر 100 ألف ل س (300%)"),
    Product(
        image: "assets/images/product2.png",
        price: 300,
        stars: 4,
        isTopRate: true,
        numRating: 302,
        oldPrice: 800,
        desc: "شاشة تريفيو 24 بوصة سمارت بوكس هاي دفنشن كلرز",
        marketName: "Alaa",
        offerTitle: "وفر 100 ألف ل س (300%)"),
  ];

  List<Product> recommendedProducts = [
    Product(
        image: "assets/images/product2.png",
        price: 300,
        stars: 5,
        numRating: 302,
        isTopRate: true,
        // oldPrice: 800,
        marketName: "السباعي للعطور",
        desc: "هودي كبيرة سادة مع صورة من اختيارك يا حلو يا جميل",
        offerTitle: "وفر 100 ألف ل س (300%)"),
    Product(
        image: "assets/images/product3.png",
        price: 300,
        stars: 4,
        isTopRate: false,
        oldPrice: 800,
        numRating: 302,
        desc: "pewdiepie protien shaker",
        marketName: "pewdiepie",
        offerTitle: "وفر 100 ألف ل س (300%)"),
    Product(
        image: "assets/images/product2.png",
        price: 300,
        stars: 4,
        isTopRate: true,
        oldPrice: 800,
        numRating: 302,
        desc: "شاشة تريفيو 24 بوصة سمارت بوكس هاي دفنشن كلرز",
        marketName: "Alaa",
        offerTitle: "وفر 100 ألف ل س (300%)"),
  ];

  List<Product> offersList = [
    Product(
        image: "assets/images/product4.png",
        price: 300,
        stars: 5,
        numRating: 302,
        isTopRate: true,
        // oldPrice: 800,
        marketName: "السباعي للعطور",
        desc: "هودي كبيرة سادة مع صورة من اختيارك يا حلو يا جميل",
        offerTitle: "وفر 100 ألف ل س (300%)"),
    Product(
        image: "assets/images/product4.png",
        price: 300,
        stars: 5,
        isTopRate: true,
        numRating: 302,

        // oldPrice: 800,
        marketName: "السباعي للعطور",
        desc: "هودي كبيرة سادة مع صورة من اختيارك يا حلو يا جميل",
        offerTitle: "وفر 100 ألف ل س (300%)"),
    Product(
        image: "assets/images/product4.png",
        price: 300,
        stars: 4,
        numRating: 302,
        isTopRate: false,
        oldPrice: 800,
        desc: "pewdiepie protien shaker",
        marketName: "pewdiepie",
        offerTitle: "وفر 100 ألف ل س (300%)"),
    Product(
        image: "assets/images/product4.png",
        price: 300,
        stars: 4,
        isTopRate: true,
        numRating: 302,
        oldPrice: 800,
        desc: "شاشة تريفيو 24 بوصة سمارت بوكس هاي دفنشن كلرز",
        marketName: "Alaa",
        offerTitle: "وفر 100 ألف ل س (300%)"),
  ];

  changeRating(Product product, double newRate) {
    product.stars = newRate;
    notifyListeners();
  }

  favorite(Product product, bool value) {
    product.isFavorite = value;
    notifyListeners();
  }
}
