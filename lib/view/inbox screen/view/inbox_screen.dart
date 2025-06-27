import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/inbox%20screen/controller/inbox_controller.dart';
import 'package:doss_doss/view/inbox%20screen/widgets/meaasge%20card/message_card.dart';
import 'package:doss_doss/view/inbox%20screen/widgets/noyification/notification_card.dart';
import 'package:doss_doss/view/widgets/icons/custom_appbar_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class InboxScreen extends  StatelessWidget {
  const InboxScreen({super.key});

 

  @override
  Widget build(BuildContext context) {
        final inboxController = Get.put(InboxController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Inbox', style: Styles.style30),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CustomAppBarIcon(
              () {
                // البحث
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
              // العودة
            },
            Icons.arrow_back_ios,
            true,
          ),
        ),
        bottom: TabBar(
          controller: inboxController.tabController,
          labelColor: AppColors.primary,
          unselectedLabelColor: AppColors.greyColor10,
          unselectedLabelStyle: Styles.style12,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 1,
          indicatorColor: AppColors.primary,
          labelStyle: Styles.style12,
          tabs: [Tab(text: 'Messages'), Tab(text: 'Inbox')],
        ),
      ),
      body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: TabBarView(
          controller: inboxController.tabController,
          children: [
            // محتوى علامة التبويب "Messages"
            ListView.separated(
              itemBuilder: (context, index) => MessageCard(),
              separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Divider(color: AppColors.greyColor11),
              ),
              itemCount: 1,
            ),
            // محتوى علامة التبويب "Inbox"
            ListView.separated(
              itemBuilder: (context, index) => NotificationCard(),
              separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Divider(color: AppColors.greyColor11),
              ),
              itemCount: 4,
            ),
          ],
        ),
      ),
    );
  }
}