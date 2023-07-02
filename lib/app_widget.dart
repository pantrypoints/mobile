import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:prenuer/core/themes/app_theme.dart';
import 'package:prenuer/modules/navigator/bindings/bottom_navigator_binding.dart';
import 'package:prenuer/modules/navigator/views/widgets/bottom_navigator.dart';
import 'package:prenuer/modules/cashier/views/pages/checkout.dart';


class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'Preneur',
      theme: AppTheme.lightTheme,
      initialBinding: BottomNavigatorBinding(),
      home: BottomNavigator(),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/checkout',
          page: () => Checkout(),
        ),
      ],      
    );
  }
}
