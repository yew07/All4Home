// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:all4home/homepage.dart';
import 'package:all4home/My_activity.dart';
import 'package:all4home/Wishlist.dart';
import 'package:all4home/Messages.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class first_page extends StatelessWidget {
  const first_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {
      return [
        HomePage(),
        const My_activity(),
        const Wishlist(),
        const Messages(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          title: ("Homepage"),
          activeColorPrimary: Color(0xFF1A7450),
          inactiveColorPrimary: Color.fromRGBO(140, 161, 158, 1),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.local_activity_rounded),
          title: ("My Activity"),
          activeColorPrimary: Color(0xFF1A7450),
          inactiveColorPrimary: Color.fromRGBO(140, 161, 158, 1),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.favorite),
          title: ("Wishlist"),
          activeColorPrimary: Color(0xFF1A7450),
          inactiveColorPrimary: Color.fromRGBO(140, 161, 158, 1),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.message_rounded),
          title: ("Messages"),
          activeColorPrimary: Color(0xFF1A7450),
          inactiveColorPrimary: Color.fromRGBO(140, 161, 158, 1),
        ),
      ];
    }

    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);
    return SafeArea(
        child: PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _navBarsItems(),
      controller: controller,
      confineInSafeArea: true,
      backgroundColor: Color.fromRGBO(238, 238, 238, 1),
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Color.fromRGBO(238, 238, 238, 1),
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style9,
      bottomScreenMargin: kBottomNavigationBarHeight,
    ));
  }
}
