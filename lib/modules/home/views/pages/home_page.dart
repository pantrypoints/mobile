import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prenuer/core/helpers/custom_colors.dart';
import 'package:prenuer/modules/home/controllers/home_controller.dart';
import 'package:textless/textless.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return RefreshIndicator(
        onRefresh: controller.refreshData,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 64,
                width: double.infinity,
              ),
              if (controller.hasFeature.value)
                CarouselSlider(
                  options: CarouselOptions(
                    height: 160,
                    viewportFraction: 0.9,
                    enlargeCenterPage: false,
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 7),
                    autoPlayAnimationDuration: Duration(milliseconds: 1000),
                    autoPlayCurve: Curves.fastOutSlowIn,
                  ),
                  items: controller.features
                      .map((item) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 12),
                            child: Stack(
                              children: [
                                Center(
                                    child: Image.asset(item.image,
                                        fit: BoxFit.cover,
                                        width: double.infinity)),
                                Positioned(
                                    top: 8,
                                    left: 8,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: CustomColors.primaryColorLight,
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                        child: item.title.text
                                            .color(Colors.white).paddingAll(4))),
                                Positioned(
                                    bottom: 8,
                                    left: 8,
                                    child: Container(
                                        decoration: BoxDecoration(
                                          color: CustomColors.primaryColorLight,
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                        child: item.description.text
                                            .color(Colors.white).paddingAll(4)))
                              ],
                            ),
                          ))
                      .toList(),
                )
              else
                SizedBox.shrink(),
            ],
          ),
        ),
      );
    });
  }
}
