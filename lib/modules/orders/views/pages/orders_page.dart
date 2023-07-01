import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prenuer/modules/cashier/bindings/cashier_binding.dart';
import 'package:prenuer/modules/cashier/views/pages/cachier_page.dart';
import 'package:textless/textless.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 64,
            width: double.infinity,
          ),
          "All Orders".text.color(Theme.of(context).primaryColor).size(24).alignCenter,
          SizedBox(
            height: 32,
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(() => const CashierPage(),
                    transition: Transition.downToUp, binding: CashierBinding());
              },
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.all(0),
                  backgroundColor: Theme.of(context).primaryColor),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: "Add order".text.color(Colors.white),
              ))
        ],
      ),
    );
  }
}
