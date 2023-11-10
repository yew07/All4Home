import 'package:all4home/features_categories/services/bedroomservices.dart';
import 'package:all4home/features_categories/services/services_details/services_details_page.dart';
import 'package:all4home/features_categories/services/services_tile.dart';
import 'package:data_filters/data_filters.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bedroom extends StatefulWidget {
  const Bedroom({Key? key}) : super(key: key);

  @override
  State<Bedroom> createState() => _BedroomState();
}

class _BedroomState extends State<Bedroom> {
  List<List> data = [
    ['5 star', 'Bed Making', 'Kuala Lumpur', '> RM 200 '],
    ['4 star', 'Organizing', 'Penang', 'RM 150 - RM 200'],
    ['3 star', 'Air Freshening', 'Kedah', 'RM 100 - RM 150'],
    ['2 star', 'Mattress Cleaning', 'Perak', ' RM 50 - RM 100'],
    ['1 star', 'Vacumming', 'Johor', ' < RM 50'],
  ];
  List<String> titles = ['Ratings', 'Services', 'Location', 'Price'];
  List<int>? filterIndex;
  void navigateToServicesDetails(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ServicesDetailsPage(
          bedservice: Bedroom_Service.bedroomservice[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Bedroom_Service> bedroomServices = Bedroom_Service.bedroomservice;
    return Scaffold(
      backgroundColor: Color.fromRGBO(199, 212, 197, 1),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Color(0xFF1A7450),
        title: Text(
          "Bedroom",
          style: GoogleFonts.outfit(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          /// This widget builds filters
          DataFilters(
            data: data,

            /// pass your filter title here
            filterTitle: titles,

            /// enable animation
            showAnimation: true,

            /// get list of index of selected filter
            recent_selected_data_index: (List<int>? index) {
              setState(() {
                filterIndex = index;
              });
            },

            /// styling
            style: FilterStyle(
              buttonColor: Colors.green,
              buttonColorText: Colors.white,
              filterBorderColor: Colors.white,
            ),
          ),

          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Companies/Agencies',
              style: GoogleFonts.outfit(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.all(20.0),
          //   child: TextField(
          //     decoration: InputDecoration(
          //       contentPadding: EdgeInsets.symmetric(vertical: 15.0),
          //       border: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(30.0),
          //         borderSide: BorderSide(width: 0.8),
          //       ),
          //       prefixIcon: Icon(
          //         Icons.search,
          //         size: 30.0,
          //       ),
          //       hintText: 'What are you looking for?',
          //       suffixIcon: IconButton(
          //         icon: Icon(Icons.clear),
          //         onPressed: () {},
          //       ),
          //     ),
          //   ),
          // ),
          Expanded(
            child: ListView.builder(
              itemCount: bedroomServices.length,
              itemBuilder: (context, index) => Services_Tile(
                bedservice: bedroomServices[index],
                onTap: () => navigateToServicesDetails(index),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
