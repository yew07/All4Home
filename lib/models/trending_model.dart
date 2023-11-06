
import 'package:flutter/material.dart';

class TrendingModel {
  String name;
  Color boxColor;

  TrendingModel({
    required this.name,
    required this.boxColor,
  });

  
  static List<TrendingModel> getTrending() {
    List<TrendingModel> trending = [];

    trending.add(
      TrendingModel(
        name: 'News',
        boxColor: Color.fromARGB(199, 212, 197, 1),
      ),
    );

    trending.add(
      TrendingModel(
        name: 'Best buy!',
        boxColor: Color.fromARGB(198, 91, 15, 255),
      ),
    );

    trending.add(
      TrendingModel(
        name: 'Limited Edition',
        boxColor: Color.fromARGB(198, 38, 144, 91),
      ),
    );

    trending.add(
      TrendingModel(
        name: 'Perfect',
        boxColor: Color.fromARGB(197, 217, 84, 166),
      ),
    );

    return trending;
  }
}
