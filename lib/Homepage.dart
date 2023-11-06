import 'package:all4home/models/trending_model.dart';
import 'package:all4home/pages/drawer/DrawerList.dart';
import 'package:all4home/pages/features/Cleaning_Maintenance.dart';
import 'package:all4home/pages/features/ID_Renovation.dart';
import 'package:all4home/pages/features/Renting_Selling.dart';
import 'package:all4home/pages/features/SmartHome.dart';
import 'package:all4home/pages/trendingpages/bestbuy.dart';
import 'package:all4home/pages/trendingpages/limiteded.dart';
import 'package:all4home/pages/trendingpages/news.dart';
import 'package:all4home/pages/trendingpages/perfect.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<TrendingModel> trending = [];
  List<Widget> route = [News(), BestBuy(), LimitedEd(), Perfect()];

  void _getTrendingInfo() {
    trending = TrendingModel.getTrending();
  }

  @override
  Widget build(BuildContext context) {
    _getTrendingInfo();
    return Scaffold(
      backgroundColor: Color.fromRGBO(199, 212, 197, 1),
      appBar: AppBar(
        elevation: 15,
        backgroundColor: Color(0xFF1A7450),
        shadowColor: Color(0xFF1A7450),
        title: Text(
          "Homepage",
          style: GoogleFonts.outfit(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: 60,
      ),
      drawer: DrawerList(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(left: 10, right: 20),
              child: Text(
                'Hello Yi Jian,\nWelcome to All4Life',
                style: GoogleFonts.outfit(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),

            Divider(
              thickness: 2.0,
              color: Colors.grey,
              indent: 10.0,
              endIndent: 10.0,
            ),

            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Features',
                style: GoogleFonts.outfit(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              child: SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(width: 25),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return Cleaning_Maintenance();
                            },
                          ),
                        );
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Cleaning &\nMaintenance',
                            style: GoogleFonts.outfit(
                              fontSize: 25,
                            ),
                          ),
                        ),
                        width: 300,
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("assets/images/cleaning .png"),
                              fit: BoxFit.fill),
                          // border: Border.all(
                          //   color: Colors.grey,
                          //   width: 2,
                          // ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    const SizedBox(width: 25),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return ID_Renovation();
                            },
                          ),
                        );
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Interior Design & Renovation',
                            style: GoogleFonts.outfit(
                              fontSize: 25,
                            ),
                          ),
                        ),
                        width: 300,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/design.png"),
                            fit: BoxFit.fill,
                          ),
                          // border: Border.all(
                          //   color: Colors.grey,
                          //   width: 2,
                          // ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    const SizedBox(width: 25),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return Renting_Selling();
                            },
                          ),
                        );
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Renting & Selling',
                            style: GoogleFonts.outfit(
                              fontSize: 25,
                            ),
                          ),
                        ),
                        width: 300,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("assets/images/selling.png"),
                              fit: BoxFit.fill),
                          // border: Border.all(
                          //   color: Colors.grey,
                          //   width: 2,
                          // ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    const SizedBox(width: 25),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return SmartHome();
                            },
                          ),
                        );
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            'Smart Home',
                            style: GoogleFonts.outfit(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        width: 300,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("assets/images/smarthome.png"),
                              fit: BoxFit.fill),
                          // border: Border.all(
                          //   color: Colors.grey,
                          //   width: 2,
                          // ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    const SizedBox(width: 25),
                  ],
                ),
              ),
            ),

//Trending section
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Trending',
                style: GoogleFonts.outfit(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            SizedBox(
              height: 200,
              child: ListView.separated(
                  itemCount: trending.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 25,
                      ),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 250,
                      decoration: BoxDecoration(
                        color: trending[index].boxColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: ListTile(
                        title: Text(trending[index].name),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => route[index])),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
