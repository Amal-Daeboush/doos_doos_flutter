import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/bussines%20screen/widgets/cards/transaction_card.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', isBack: true),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 25,
          left: 16,
          right: 16,
          bottom: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Transaction History', style: Styles.style26),
            SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TransactionCard(isconfirmed: true),
                    SizedBox(height: 10),
                    TransactionCard(isconfirmed: false),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
