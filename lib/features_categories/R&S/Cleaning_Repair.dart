import 'package:all4home/features_categories/R&S/Smaller%20Categories/CleaningSupplies.dart';
import 'package:all4home/features_categories/R&S/Smaller%20Categories/ElectricalTools.dart';
import 'package:all4home/features_categories/R&S/Smaller%20Categories/PowerTools.dart';
import 'package:flutter/material.dart';

class Cleaning_Repair extends StatelessWidget {
  const Cleaning_Repair({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Color.fromARGB(139, 94, 255, 142),
        title: Text("Cleaning & Repairment tools"),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(width: 0.8),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30.0,
                  ),
                  hintText: 'What are you looking for?',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {},
                  ),
                ),
              ),
            ),

            //Diverder line for searchbar
            Divider(
              height: 10.0,
              thickness: 1.0,
              color: Colors.grey,
              indent: 20.0,
              endIndent: 20.0,
            ),

            Align(
              alignment: FractionalOffset.topCenter,
              child: Column(
                children: [
                  SizedBox(
                    height: 550,
                    width: 380,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return PowerTools();
                                },
                              ),
                            );
                          },
                          child: Container(
                            child: Center(
                              child: const Text(
                                'Power tools',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            height: 100,
                            width: 100,
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/kitchen background.jpg"),
                                fit: BoxFit.fill,
                              ),
                              color: Color.fromRGBO(224, 212, 205, 1),
                              border: Border.all(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return ElectricalTools();
                                },
                              ),
                            );
                          },
                          child: Container(
                            child: Center(
                              child: const Text(
                                'Electrical tools',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            height: 100,
                            width: 100,
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/kitchen background.jpg"),
                              ),
                              color: Color.fromRGBO(224, 212, 205, 1),
                              border: Border.all(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return CleaningSupplies();
                                },
                              ),
                            );
                          },
                          child: Container(
                            child: Center(
                              child: const Text(
                                'Cleaning Supplies',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            height: 100,
                            width: 100,
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(224, 212, 205, 1),
                              border: Border.all(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
