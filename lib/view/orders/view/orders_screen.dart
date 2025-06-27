import 'package:doss_doss/view/orders/widgets/order_card.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:flutter/material.dart';


class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Orders', isBack: false),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [OrderCard()]),
      ),
    );
  }
}
