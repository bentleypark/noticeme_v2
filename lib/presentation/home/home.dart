import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:noticeme/controller/home_controller.dart';
import 'package:noticeme/resources/colors.dart';
import 'package:noticeme/utils/ex_fuctions.dart';

class Home extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: COLOR_GRAY.parseColor(),
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                // HomePage(),
                // NewsPage(),
                // AlertsPage(),
                // AccountPage(),
              ],
            ),
          ),
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            child: BottomNavigationBar(
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.greenAccent,
              onTap: controller.changeTabIndex,
              currentIndex: controller.tabIndex,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              elevation: 0,
              items: [
                _bottomNavigationBarItem(
                  iconActive: SvgPicture.asset(
                    'images/search_active.svg',
                    width: 20,
                    height: 20,
                  ),
                  icon: SvgPicture.asset(
                    'images/search.svg',
                    width: 20,
                    height: 20,
                  ),
                  label: 'Search',
                ),
                _bottomNavigationBarItem(
                  iconActive: Container(),
                  icon: SvgPicture.asset(
                    'images/dday.svg',
                    width: 20,
                    height: 20,
                  ),
                  label: 'D-Day',
                ),
                _bottomNavigationBarItem(
                  iconActive: SvgPicture.asset(
                    'images/my_active.svg',
                    width: 20,
                    height: 20,
                  ),
                  icon: SvgPicture.asset(
                    'images/my.svg',
                    width: 20,
                    height: 20,
                  ),
                  label: 'My',
                ),
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Visibility(
            visible: controller.tabIndex == 1,
            child: Container(
              height: 75,
              width: 75,
              child: FittedBox(
                child: FloatingActionButton(
                  onPressed: () {},
                  tooltip: 'Increment',
                  child: Icon(Icons.add, size: 27),
                  elevation: 4.0,
                  backgroundColor: COLOR_WHITE.parseColor(),
                  foregroundColor: COLOR_GREEN_ORANGE.parseColor(),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({Widget iconActive, Widget icon, String label}) {
    return BottomNavigationBarItem(
      activeIcon: iconActive,
      icon: icon,
      label: label,
    );
  }
}
