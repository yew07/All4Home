import 'package:flutter/material.dart';

class FeaturesModel {
  String name;
  Color boxColor;

  FeaturesModel({
    required this.name,
    required this.boxColor,
  });

  static List<FeaturesModel> getFeatures() {
    List<FeaturesModel> features = [];

    features.add(
      FeaturesModel(
        name: 'Interior Design & Renovations',
        boxColor: Color.fromARGB(199, 212, 197, 1),
      ),
    );

    features.add(
      FeaturesModel(
        name: 'Cleaning & Repairment',
        boxColor: Color.fromARGB(198, 91, 15, 255),
      ),
    );

    features.add(
      FeaturesModel(
        name: 'Smart Home',
        boxColor: Color.fromARGB(198, 38, 144, 91),
      ),
    );

    features.add(
      FeaturesModel(
        name: 'Renting & Selling',
        boxColor: Color.fromARGB(197, 217, 84, 166),
      ),
    );

    return features;
  }
}
