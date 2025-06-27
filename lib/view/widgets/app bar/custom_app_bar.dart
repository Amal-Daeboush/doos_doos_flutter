import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/styles.dart';
import '../icons/custom_appbar_icon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBack;
  final Widget? trailing;
  final bool isBack;
  final PreferredSizeWidget? bottom;
  const CustomAppBar({
    super.key,
    required this.title,
    this.onBack,
    this.trailing,
    required this.isBack,
    this.bottom,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: bottom,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomAppBarIcon(
            onBack ??
                () {
                  Get.back();
                },
            isBack ? Icons.arrow_back_ios : Icons.close,
            isBack ? true : false,
          ),
          Text(title, style: Styles.style26),
          trailing ?? const SizedBox(width: 40), // للتوازن البصري مع الأيقونة
        ],
      ),
    );
  }
}
