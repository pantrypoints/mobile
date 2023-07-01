import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prenuer/core/widgets/custom_rotation_widget.dart';
import 'package:prenuer/modules/cashier/controllers/cashier_controller.dart';
import 'package:textless/textless.dart';
import 'dart:math';

class CashierPage extends GetView<CashierController> {
  const CashierPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Obx((){
              return Padding(
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
                              startAngle: pi,
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
                    "Cashier".text.color(Theme.of(context).primaryColor).size(24)
                  ],
                ),
              );
            }
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
