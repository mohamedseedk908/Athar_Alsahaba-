import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmothBageIndicator extends StatelessWidget {
  const CustomSmothBageIndicator({super.key, required this.controller,});
  final  PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count:3,
      effect: const ExpandingDotsEffect(),
    );
  }
}
