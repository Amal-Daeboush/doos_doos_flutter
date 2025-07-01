import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget carLoader() {
  return Container(
    color: Colors.white.withOpacity(0.8),
    child: Center(
      child: Lottie.asset(
        'assets/lottie/loader.json',
        width: 150,
        height: 150,

        fit: BoxFit.contain,
      ),
    ),
  );
}
