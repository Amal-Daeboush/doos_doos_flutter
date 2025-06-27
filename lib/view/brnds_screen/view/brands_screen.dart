import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/model/car_brand_model.dart';
import 'package:doss_doss/view/brnds_screen/controller/brands_controller.dart';
import 'package:doss_doss/view/brnds_screen/widgets/brand_card.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:doss_doss/view/widgets/icons/custom_appbar_icon.dart';
import 'package:doss_doss/view/widgets/text%20field/custom_field_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class BrandsScreen extends StatelessWidget {
  final List<CarBrandModel> brands;
  const BrandsScreen({super.key, required this.brands});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;

    int crossAxisCount;
    if (size.width > 900) {
      crossAxisCount = orientation == Orientation.landscape ? 5 : 4;
    } else if (size.width > 600) {
      crossAxisCount = orientation == Orientation.landscape ? 4 : 3;
    } else {
      crossAxisCount = orientation == Orientation.landscape ? 3 : 2;
    }
    final totalHorizontalSpacing = 10 * (crossAxisCount - 1) + 16;

    final cardWidth = (size.width - totalHorizontalSpacing) / crossAxisCount;
    final cardHeight = cardWidth / 1.5; // نحسب الارتفاع المناسب للنسبة
    final childAspectRatio = cardWidth / cardHeight;
    // صغر الكروت بتعديل النسبة

    return Scaffold(
      appBar: CustomAppBar(title: 'All Brands', isBack: true),

      // title: Text('Select your ride', style: Styles.style30),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
        child: GetBuilder(
          init: BrandsController(brands: brands),
          builder: (controller) {
            return Column(
              children: [
                CustomFieldSearch(),
                SizedBox(height: 15.h),
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        sliver: SliverGrid(
                          delegate: SliverChildBuilderDelegate(
                            (ctx, i) => CustomCardBrand(
                              brandModel: controller.brands[i],
                              onTap: () {},
                              //   product: subcategory.products[i],
                              /*  onTap:
                                  () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder:
                                          (_) => DetailsScreen(
                                            product: subcategory.products[i],
                                          ),
                                    ),
                                  ), */
                            ),
                            childCount: controller.brands.length,
                          ),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: crossAxisCount,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                childAspectRatio: childAspectRatio,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: CustomButtons(
                    title: 'Next',
                    isBlack: true,
                    issmall: false,
                    border: AppColors.primary,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
