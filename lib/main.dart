import 'package:all4home/features_categories/C&M/Appliances.dart';
import 'package:all4home/features_categories/C&M/Cleaning.dart';
import 'package:all4home/features_categories/C&M/ElectricalServices.dart';
import 'package:all4home/features_categories/C&M/Lawn_GardenServices.dart';
import 'package:all4home/features_categories/C&M/Plumbing.dart';
import 'package:all4home/features_categories/C&M/Smaller%20Categories/Bedroom.dart';
import 'package:all4home/features_categories/C&M/Smaller%20Categories/CarpetCleaning.dart';
import 'package:all4home/features_categories/C&M/Smaller%20Categories/DeepCleaning.dart';
import 'package:all4home/features_categories/C&M/Smaller%20Categories/DrainCleaning.dart';
import 'package:all4home/features_categories/C&M/Smaller%20Categories/ElectricalTroubleshooting.dart';
import 'package:all4home/features_categories/C&M/Smaller%20Categories/GardeningServices.dart';
import 'package:all4home/features_categories/C&M/Smaller%20Categories/HouseCleaning.dart';
import 'package:all4home/features_categories/C&M/Smaller%20Categories/Installation.dart';
import 'package:all4home/features_categories/C&M/Smaller%20Categories/Kitchen.dart';
import 'package:all4home/features_categories/C&M/Smaller%20Categories/LawnCare.dart';
import 'package:all4home/features_categories/C&M/Smaller%20Categories/LeakDetect.dart';
import 'package:all4home/features_categories/C&M/Smaller%20Categories/Livingroom.dart';
import 'package:all4home/features_categories/C&M/Smaller%20Categories/PlumbingRepair.dart';
import 'package:all4home/features_categories/C&M/Smaller%20Categories/TreeTrimming.dart';
import 'package:all4home/features_categories/C&M/Smaller%20Categories/WiringUpgrades.dart';
import 'package:all4home/features_categories/ID&R/Smaller%20Categories/Consultation.dart';
import 'package:all4home/features_categories/ID&R/Smaller%20Categories/CustomDeco.dart';
import 'package:all4home/features_categories/ID&R/Smaller%20Categories/DistanceMoving.dart';
import 'package:all4home/features_categories/ID&R/Smaller%20Categories/HomeStaging.dart';
import 'package:all4home/features_categories/ID&R/Smaller%20Categories/PackingUnpacking.dart';
import 'package:all4home/features_categories/ID&R/Smaller%20Categories/StorageSolutions.dart';
import 'package:all4home/features_categories/R&S/Smaller%20Categories/CleaningSupplies.dart';
import 'package:all4home/features_categories/R&S/Smaller%20Categories/ElectricalTools.dart';
import 'package:all4home/features_categories/R&S/Smaller%20Categories/FlooringMaterials.dart';
import 'package:all4home/features_categories/R&S/Smaller%20Categories/Furniture.dart';
import 'package:all4home/features_categories/R&S/Smaller%20Categories/HomeAppliances.dart';
import 'package:all4home/features_categories/R&S/Smaller%20Categories/Lighthing.dart';
import 'package:all4home/features_categories/R&S/Smaller%20Categories/PowerTools.dart';
import 'package:all4home/features_categories/R&S/Smaller%20Categories/SmartSecure.dart';
import 'package:all4home/features_categories/R&S/Smaller%20Categories/SmartTvs.dart';
import 'package:all4home/features_categories/SH/Smaller%20Categories/SecureSystem.dart';
import 'package:all4home/features_categories/SH/Smaller%20Categories/SmartAppliance.dart';
import 'package:all4home/features_categories/SH/Smaller%20Categories/SmartVoice.dart';
import 'package:all4home/first_page.dart';
import 'package:all4home/pages/drawer/AboutUs.dart';
import 'package:all4home/pages/drawer/ContactUs.dart';
import 'package:all4home/pages/drawer/LogOut.dart';
import 'package:all4home/pages/drawer/My_Profile.dart';
import 'package:all4home/pages/drawer/Settings.dart';
import 'package:all4home/pages/features/Cleaning_Maintenance.dart';
import 'package:all4home/pages/features/ID_Renovation.dart';
import 'package:all4home/pages/features/Renting_Selling.dart';
import 'package:all4home/pages/features/SmartHome.dart';
import 'package:all4home/pages/trendingpages/bestbuy.dart';
import 'package:all4home/pages/trendingpages/LimitedEd.dart';
import 'package:all4home/pages/trendingpages/news.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (BuildContext context, child) => MaterialApp(
        title: 'Login UI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xff4C53FB),
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        home: const LoginScreen(),
        routes: {
          '/first_page': (context) => first_page(),
          '/My_Profile': (context) => My_Profile(),
          '/Settings': (context) => Settings(),
          '/AboutUs': (context) => AboutUs(),
          '/ContactUs': (context) => ContactUs(),
          '/LogOut': (context) => LogOut(),
          '/Cleaning_Maintenance': (context) => Cleaning_Maintenance(),
          '/ID_Renovation': (context) => ID_Renovation(),
          '/Renting_Selling': (context) => Renting_Selling(),
          '/SmartHome': (context) => SmartHome(),
          '/Appliances': (context) => Appliances(),
          '/Cleaning': (context) => Cleaning(),
          '/ElectricalServices': (context) => ElectricalServices(),
          '/Lawn_GardenServices': (context) => Lawn_GardenServices(),
          '/Plumbing': (context) => Plumbing(),
          '/News': (context) => News(),
          '/BestBuy': (context) => BestBuy(),
          '/LimitedEd': (context) => LimitedEd(),
          '/Bedroom': (context) => Bedroom(),
          '/CarpetCleaning': (context) => CarpetCleaning(),
          '/DeepCleaning': (context) => DeepCleaning(),
          '/ElectricalTroubleshooting': (context) =>
              ElectricalTroubleshooting(),
          '/HouseCleaning': (context) => HouseCleaning(),
          '/Installation': (context) => Installation(),
          '/Kitchen': (context) => Kitchen(),
          '/Livingroom': (context) => Livingroom(),
          '/WiringUpgrades': (context) => WiringUpgrades(),
          '/LawnCare': (context) => LawnCare(),
          '/TreeTrimming': (context) => TreeTrimming(),
          '/GardeningServices': (context) => GardeningServices(),
          '/LeakDetect': (context) => LeakDetect(),
          '/PlumbingRepair': (context) => PlumbingRepair(),
          '/DrainCleaning': (context) => DrainCleaning(),
          '/Consultation': (context) => Consultation(),
          '/CustomDeco': (context) => CustomDeco(),
          '/DistanceMoving': (context) => DistanceMoving(),
          '/HomeStaging': (context) => HomeStaging(),
          '/PackingUnpacking': (context) => PackingUnpacking(),
          '/StorageSolutions': (context) => StorageSolutions(),
          '/CleaningSupplies': (context) => CleaningSupplies(),
          '/ElectricalTools': (context) => ElectricalTools(),
          '/FlooringMaterials': (context) => FlooringMaterials(),
          '/Furniture': (context) => Furniture(),
          '/HomeAppliances': (context) => HomeAppliances(),
          '/Lightning': (context) => Lightning(),
          '/PowerTools': (context) => PowerTools(),
          '/SmartSecure': (context) => SmartSecure(),
          '/SmartTvs': (context) => SmartTvs(),
          '/SecureSystem': (context) => SecureSystem(),
          '/SmartAppliance': (context) => SmartAppliance(),
          '/SmartVoice': (context) => SmartVoice(),
          
        },
      ),
    );
  }
}
