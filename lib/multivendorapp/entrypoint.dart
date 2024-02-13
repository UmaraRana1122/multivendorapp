import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:multivendorapp/multivendorapp/cartpage.dart';
import 'package:multivendorapp/multivendorapp/constants/constant.dart';
import 'package:multivendorapp/multivendorapp/controller/tabIndexController.dart';
import 'package:multivendorapp/multivendorapp/homePage.dart';
import 'package:multivendorapp/multivendorapp/profilepage.dart';
import 'package:multivendorapp/multivendorapp/searchpage.dart';

class EntryPoint extends StatelessWidget {
  EntryPoint({super.key});
  List pageList = const [
    HomePage(),
    CartPage(),
    ProfilePage(),
    SearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());
    return Obx(() => Scaffold(
          body: Stack(
            children: [
              pageList[controller.tabIndex],
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Theme(
                      data: Theme.of(context).copyWith(canvasColor: kPrimary),
                      child: BottomNavigationBar(
                        showSelectedLabels: false,
                        showUnselectedLabels: false,
                        unselectedIconTheme:
                            IconThemeData(color: Colors.black38),
                        selectedIconTheme: IconThemeData(color: kSecendory),
                        onTap: (value) {
                          controller.setTabIndex = value;
                        },
                        currentIndex: controller.tabIndex,
                        items: [
                          BottomNavigationBarItem(
                              icon: controller.tabIndex == 0
                                  ? Icon(AntDesign.appstore1)
                                  : Icon(AntDesign.appstore_o),
                              label: 'Home'),
                          BottomNavigationBarItem(
                              icon: controller.tabIndex == 1
                                  ? Icon(FontAwesome.search)
                                  : Icon(FontAwesome.search_plus),
                              label: 'Search'),
                          BottomNavigationBarItem(
                              icon: controller.tabIndex == 2
                                  ? Badge(
                                      label: Text("1"),
                                      child: Icon(FontAwesome.opencart))
                                  : Icon(FontAwesome.shopping_cart),
                              label: 'Cart'),
                          BottomNavigationBarItem(
                              icon: controller.tabIndex == 3
                                  ? Icon(FontAwesome.user_circle)
                                  : Icon(FontAwesome.user_circle_o),
                              label: 'Profile'),
                        ],
                      )))
            ],
          ),
        ));
  }
}
