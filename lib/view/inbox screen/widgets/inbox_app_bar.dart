import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/view/widgets/icons/custom_appbar_icon.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/constant/styles.dart';

class InboxAppBar extends StatelessWidget implements PreferredSizeWidget {final TabController? controller;
  const InboxAppBar({super.key, this.controller});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        title: Text('Inbox',style:Styles.style30),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CustomAppBarIcon(
              () {
                // Get.back();
              },
              Iconsax.search_normal_1,
            
              false,
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(13),
          child: CustomAppBarIcon(
            () {
              // Get.back();
            },
            Icons.arrow_back_ios,
            true,
          ),
        ),
        bottom: TabBar(
          controller: controller,
        

          labelColor: AppColors.primary,
          unselectedLabelColor: AppColors.greyColor10,
          unselectedLabelStyle: Styles.style12,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 1,
          indicatorColor: AppColors.primary,

          labelStyle: Styles.style12,
          tabs: [Tab(text: 'messages'), Tab(text: 'Inbox')],
        ),
        //   isBack: false,
        //  trailing: CustomAppBarIcon(() {}, Iconsax.search_normal_1, false),
      );
  }
}
