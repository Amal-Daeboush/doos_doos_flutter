import 'package:flutter/material.dart';

abstract class CustomSliderThumbCircle extends SliderComponentShape {
  final double thumbRadius;

  CustomSliderThumbCircle({required this.thumbRadius});

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required Size sizeWithOverflow,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
  }) {
    final Canvas canvas = context.canvas;

    final Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    final Paint border = Paint()
      ..color = Colors.black
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    // Draw a white circle
    canvas.drawCircle(center, thumbRadius, paint);
    // Draw black border around the circle
    canvas.drawCircle(center, thumbRadius, border);
  }
}


// Concrete implementation of CustomSliderThumbCircle


// Concrete implementation of CustomSliderThumbCircle


// Concrete implementation
class ConcreteSliderThumbCircle extends CustomSliderThumbCircle {
  ConcreteSliderThumbCircle({required double thumbRadius}) : super(thumbRadius: thumbRadius);

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required Size sizeWithOverflow,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
  }) {
    final Canvas canvas = context.canvas;

    // الطلاء الداخلي (لون الدائرة)
    final Paint fillPaint = Paint()
      ..color = sliderTheme.thumbColor ?? Colors.white
      ..style = PaintingStyle.fill;

    // الطلاء الخارجي (الإطار)
    final Paint borderPaint = Paint()
      ..color = Colors.black // لون الإطار أسود صريح
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    // ارسم الدائرة البيضاء أو حسب إعدادات الثيم
    canvas.drawCircle(center, thumbRadius, fillPaint);
    // ثم ارسم الإطار الأسود فوقها
    canvas.drawCircle(center, thumbRadius, borderPaint);
  }
}
