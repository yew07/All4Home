import 'package:flutter/material.dart';

class Appliances_Model {
  String name;
  Color boxColor;

  Appliances_Model({
    required this.name,
    required this.boxColor,
  });

  static List<Appliances_Model> getAppliances() {
    List<Appliances_Model> Appliance = [];

    Appliance.add(
      Appliances_Model(
        name: 'News',
        boxColor: Color.fromARGB(199, 212, 197, 1),
      ),
    );

    Appliance.add(
      Appliances_Model(
        name: 'Best buy!',
        boxColor: Color.fromARGB(198, 91, 15, 255),
      ),
    );

    Appliance.add(
      Appliances_Model(
        name: 'Limited Edition',
        boxColor: Color.fromARGB(198, 38, 144, 91),
      ),
    );

    Appliance.add(
      Appliances_Model(
        name: 'Perfect',
        boxColor: Color.fromARGB(197, 217, 84, 166),
      ),
    );

    return Appliance;
  }
}
