import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/car%20details/widgets/bottom%20container/bottom_container.dart';
import 'package:doss_doss/view/car%20details/widgets/rate_row.dart/rate_row.dart';
import 'package:doss_doss/view/car%20details/widgets/retal%20container/features_container.dart';
import 'package:doss_doss/view/car%20details/widgets/retal%20container/hosted_container.dart';
import 'package:doss_doss/view/car%20details/widgets/retal%20container/pick_return.dart';
import 'package:doss_doss/view/car%20details/widgets/retal%20container/rental_dates.dart';
import 'package:doss_doss/view/car%20details/widgets/retal%20container/review_card.dart';
import 'package:doss_doss/view/checkout%20screen/view/checkout_screen.dart';
import 'package:doss_doss/view/reviews%20screen/screen/reviews_screen.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:doss_doss/view/widgets/custom_car.dart';
import 'package:doss_doss/view/widgets/icons/custom_appbar_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class RentalDetails extends StatelessWidget {
  const RentalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isBack: true,
        title: 'Rental Details',
        trailing: CustomAppBarIcon(() {}, Iconsax.heart, false),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                right: 16,
                top: 50,
                bottom: 10,
                left: 16,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'GLA 250 SUV',
                      style: Styles.style20.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    RateRow(),
                    SizedBox(height: 10),
                    CustomCarTour(),
                    // Image.asset(AppImageAsset.ellipse),
                    SizedBox(height: 15),
                    RentalDates(),
                    PickReturn(),
                    FeaturesContainer(),
                    HostedContainer(),
                    SizedBox(height: 15),
                    Text(
                      'Rating And Reviews',
                      style: Styles.style20.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    SizedBox(height: 15),
                    //   ReviewCard(),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          3,
                          (index) => ReviewCard(isfavourteIcom: false,isInHost: false,),
                        ),
                      ),
                    ),
                    // SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: Center(
                        child: CustomButtons(
                          onTap:
                              () => Get.to(
                                () => ReviewsScreen(),
                                transition: Transition.downToUp,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeOut,
                              ),
                          title: 'See all Reviews',
                          isBlack: true,
                          issmall: false,
                          border: AppColors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //   Spacer(),
          BottomContainer(
             onTap:
          () => Get.to(
            () => CheckoutScreen(),
            transition: Transition.downToUp,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeOut,
          ),
            title: 'Continue',
            widget: Row(
              children: [
                Text(
                  '\$300',
                  style: Styles.style20.copyWith(
                    decoration: TextDecoration.lineThrough,
                    color: AppColors.greyColor8,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  '\$280 Total',
                  style: Styles.style20.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
