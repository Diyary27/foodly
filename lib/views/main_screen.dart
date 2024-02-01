import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foodly/common/custom_container.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/controllers/tab_index_controller.dart';
import 'package:foodly/views/cart/cart_page.dart';
import 'package:foodly/views/home/home_page.dart';
import 'package:foodly/views/profile/profile_page.dart';
import 'package:foodly/views/search/search_page.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final tabController = Get.put(TabIndexController());

  @override
  Widget build(BuildContext context) {
    List<Widget> pageList = [
      HomePage(),
      SearchPage(),
      CartPage(),
      ProfilePage(),
    ];

    return Obx(() => Scaffold(
          body: Stack(
            children: [
              // page
              pageList[tabController.tabIndex],

              // bottom navigation
              Align(
                alignment: Alignment.bottomCenter,
                child: BottomNavigationBar(
                  elevation: 0,
                  unselectedIconTheme: IconThemeData(color: kDark),
                  backgroundColor: kPrimary,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  type: BottomNavigationBarType.fixed,
                  currentIndex: tabController.tabIndex,
                  onTap: (value) {
                    tabController.setTabIndex = value;
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(
                        tabController.tabIndex == 0
                            ? AntDesign.appstore1
                            : AntDesign.appstore_o,
                      ),
                      label: "Home",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.search),
                      label: "Search",
                    ),
                    BottomNavigationBarItem(
                      icon: Badge(
                        label: Text("1"),
                        child: Icon(FontAwesome.opencart),
                      ),
                      label: "Cart",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        tabController.tabIndex == 3
                            ? FontAwesome.user_circle_o
                            : FontAwesome.user_circle,
                      ),
                      label: "Profile",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
