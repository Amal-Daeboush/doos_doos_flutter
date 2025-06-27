import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/bussines%20screen/widgets/replay_dialog.dart';
import 'package:doss_doss/view/car%20details/widgets/retal%20container/review_card.dart';
import 'package:flutter/material.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Text('Reviews (1)',style: Styles.style16Montserrat,),
          SizedBox(height: 16,),
          Expanded(child: SingleChildScrollView(child: Column(
            children: [ReviewCard(
              
              isfavourteIcom: true,isInHost: true,replayFunc: replay,)],
          ))),
        ],
      ),
    );
  }
} 