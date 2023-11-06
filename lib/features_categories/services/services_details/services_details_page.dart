import 'package:all4home/features_categories/services/bedroomservices.dart';
import 'package:flutter/material.dart';

class ServicesDetailsPage extends StatefulWidget {
  final Bedroom_Service bedservice;
  const ServicesDetailsPage({super.key, required this.bedservice});

  @override
  State<ServicesDetailsPage> createState() => _ServicesDetailsPageState();
}

class _ServicesDetailsPageState extends State<ServicesDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
              ],
            ),
          ),
        ],
      ),
    );
  }
}
