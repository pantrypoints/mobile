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
                    height: 180,
                    viewportFraction: 1,
                    enlargeCenterPage: false,
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 7),
                    autoPlayAnimationDuration: Duration(milliseconds: 1000),
                    autoPlayCurve: Curves.fastOutSlowIn,
                  ),
                  items: controller.features
                      .map((item) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
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
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: item.title.text
                                            .color(Colors.white)
                                            .paddingAll(4))),
                                Positioned(
                                    bottom: 8,
                                    left: 8,
                                    child: Container(
                                        decoration: BoxDecoration(
                                          color: CustomColors.primaryColorLight,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: item.description.text
                                            .color(Colors.white)
                                            .paddingAll(4)))
                              ],
                            ),
                          ))
                      .toList(),
                )
              else
                const SizedBox.shrink(),
              SizedBox(
                height: 16,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                height: 120,
                width: double.infinity,
                child: Card(
                  color: Colors.white70,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Store Management"
                          .text
                          .alignLeft
                          .paddingOnly(top: 12, left: 12),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.account_circle_rounded),
                              "Inventory".text
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.account_circle_rounded),
                              "Accounting".text
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.account_circle_rounded),
                              "Wallet".text
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.account_circle_rounded),
                              "Teams".text
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                height: 120,
                width: double.infinity,
                child: Card(
                  color: Colors.white70,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Reports"
                          .text
                          .alignLeft
                          .paddingOnly(top: 12, left: 12),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.account_circle_rounded),
                              "Sales".text
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.account_circle_rounded),
                              "Products".text
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.account_circle_rounded),
                              "Expenses".text
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.account_circle_rounded),
                              "Income".text
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                height: 120,
                width: double.infinity,
                child: Card(
                  color: Colors.white70,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Services"
                          .text
                          .alignLeft
                          .paddingOnly(top: 12, left: 12),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.account_circle_rounded),
                              "Shipping".text
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.account_circle_rounded),
                              "Payments".text
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.account_circle_rounded),
                              "Online Services".text
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
