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

              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                height: 120,
                width: double.infinity,
                child: Card(
                  color: Colors.white70.withOpacity(1),
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
                              Icon(Icons.inventory_2_outlined),
                              "Inventory".text
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.money),
                              "Accounting".text
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.wallet),
                              "Wallet".text
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.group),
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
                  color: Colors.white70.withOpacity(1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Reports"
                          .text
                          .alignLeft
                          .paddingOnly(top: 12, left: 12),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.bar_chart),
                              "Sales".text
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.chair_outlined),
                              "Products".text
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.monetization_on),
                              "Expenses".text
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.currency_exchange_rounded),
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
                  color: Colors.white70.withOpacity(1),
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
                          Expanded(
                            child: Column(
                              children: [
                                Icon(Icons.car_repair_sharp),
                                "Shipping".text
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Icon(Icons.payments_rounded),
                                "Payments".text
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Icon(Icons.language_outlined),
                                "Online Services".text
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
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
                                          color: CustomColors.primaryColorLight.withOpacity(.5),
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
                                          color: CustomColors.primaryColorLight.withOpacity(.5),
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
            ],
          ),
        ),
      );
    });
  }
}
