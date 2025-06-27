import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomLeftToTopRightTransition extends CustomTransition {
  @override
  Widget buildTransition(
    BuildContext context,
    Curve? curve,
    Alignment? alignment,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    final curvedAnimation = CurvedAnimation(
      parent: animation,
      curve: curve ?? Curves.linear, // إذا لم يتم تمرير curve استخدم linear
    );

    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1, 1), // من أسفل اليسار
        end: Offset.zero,            // إلى المنتصف
      ).animate(curvedAnimation),
      child: child,
    );
  }
}
