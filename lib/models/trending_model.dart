import 'package:flutter/material.dart';

class TrendingModel {
  String name;
  String image;
  Color boxColor;
  String shortdesc;

  TrendingModel({
    required this.name,
    required this.image,
    required this.boxColor,
    required this.shortdesc,
  });

  static List<TrendingModel> getTrending() {
    List<TrendingModel> trending = [];

    trending.add(
      TrendingModel(
          name: 'News',
          image: 'assets/images/newstoday.png',
          boxColor: Colors.white,
          shortdesc: "How to be smarter about the IoT Smart Home Experience?"),
    );

    trending.add(
      TrendingModel(
          name: 'Best buy!',
          image: 'assets/images/bestbuyitem.png',
          boxColor: Colors.white,
          shortdesc: "Exclusive offer for 11.11.\nBuy now!"),
    );

    trending.add(
      TrendingModel(
          name: 'Offers',
          image: 'assets/images/sponsored.png',
          boxColor: Colors.white,
          shortdesc: "Selected services & items up to 60% off.\nBrowse now"),
    );

    trending.add(
      TrendingModel(
          name: 'Sponsored',
          image: 'assets/images/offers.png',
          boxColor: Colors.white,
          shortdesc:
              "Featuring our sponsors for All4Life.\nClick to know more about them"),
    );

    return trending;
  }
}
