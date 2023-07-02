import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prenuer/core/widgets/custom_rotation_widget.dart';
import 'package:prenuer/modules/cashier/controllers/cashier_controller.dart';
import 'package:prenuer/modules/cashier/views/pages/checkout.dart';
import 'package:textless/textless.dart';
import 'dart:math';


class CashierPage extends GetView<CashierController> {
  const CashierPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      controller.isClosing(true);
                      Get.back();
                    },
                    child: controller.isClosing.value
                        ? const CustomRotationWidget(
                            duration: Duration(milliseconds: 600),
                            child: Icon(
                              Icons.keyboard_arrow_down_outlined,
                              size: 32,
                            ),
                            startAngle: -pi,
                      reverse: true,
                          )
                        : CustomRotationWidget(
                            duration: Duration(milliseconds: 600),
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 32,
                            ),
                            startAngle: pi,
                          ),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  "Cashier".text.size(24).color(Theme.of(context).primaryColor)
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 64,
                      width: double.infinity,
                    ),
                    if (controller.hasProduct.value)
                      SizedBox(
                        height: 320,

                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed('/checkout');
                          },
                          child:  ListView(
                            children: [
                              ...controller.products.map((element) => ListTile(
                                title: element.name.text,
                                subtitle: element.description.text,
                                leading: Image.network(element.image,
                                  fit: BoxFit.cover,
                                ),
                              ))
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),


            SizedBox(height: 16,)
          ],
        );
      }),
    );
  }
}
