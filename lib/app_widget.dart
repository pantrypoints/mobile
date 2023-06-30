import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prenuer/modules/navigator/bindings/bottom_navigator_binding.dart';
import 'package:prenuer/modules/navigator/views/widgets/bottom_navigator.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Prenuer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      initialBinding: BottomNavigatorBinding(),
      home: BottomNavigator(),
      debugShowCheckedModeBanner: false,
    );
  }
}