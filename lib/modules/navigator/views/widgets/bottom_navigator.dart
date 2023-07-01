import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prenuer/core/helpers/custom_colors.dart';
import 'package:prenuer/modules/cashier/views/pages/cachier_page.dart';
import 'package:prenuer/modules/home/views/pages/home_page.dart';
import 'package:prenuer/modules/navigator/controllers/bottom_navigator_controller.dart';
import 'package:prenuer/modules/orders/views/pages/orders_page.dart';
import 'package:prenuer/modules/profile/views/pages/profile_page.dart';
import 'package:textless/textless.dart';

class BottomNavigator extends GetView<BottomNavigatorController> {
  final List<_TabItem> _tabItems = [
    _TabItem(
      icon: const Icon(
        Icons.home,
      ),
      title: 'Home',
      widget: const HomePage(),
    ),
    _TabItem(
      icon: const Icon(
        Icons.shopping_cart,
      ),
      title: 'Cashier',
      widget: const CashierPage(),
    ),
    _TabItem(
      icon: const Icon(
        Icons.shopping_cart_outlined,
      ),
      title: 'Orders',
      widget: const OrdersPage(),
    ),
    _TabItem(
      icon: const Icon(
        Icons.account_circle_outlined,
      ),
      title: 'Profile',
      widget: const ProfilePage(),
    ),
  ];

  BottomNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Obx(() {
        return Scaffold(
          body: _tabItems[controller.currentIndex.value].widget,
          // bottomNavigationBar: BottomNavigationBar(
          //   currentIndex: controller.currentIndex.value,
          //   showSelectedLabels: true,
          //   onTap: controller.onTabTapped,
          //   showUnselectedLabels: true,elevation: 12,
          //   items: [
          //     ..._tabItems.map((item) => BottomNavigationBarItem(
          //           icon: item.icon,
          //           label: item.title,
          //         ))
          //   ],
          // ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(0.0),
            child: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              notchMargin: 5,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < _tabItems.length; i++)
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            controller.onTabTapped(i);
                          },
                          icon: _tabItems.elementAt(i).icon,
                          iconSize: 28,
                        ),
                        // _tabItems.elementAt(i).title.text
                      ],
                    ),
                ],
              ),
            ),
          ),
          floatingActionButton: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: CustomColors.primaryColorLight),
              child: const Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(
                  Icons.calculate_sharp,
                  color: Colors.white,
                ),
              )),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        );
      }),
    );
  }
}

class _TabItem {
  final Icon icon;
  final String title;
  final Widget widget;

  _TabItem({
    required this.icon,
    required this.title,
    required this.widget,
  });
}
