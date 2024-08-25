import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_container_period.dart';

class HistoricalPeriods extends StatelessWidget {
  const HistoricalPeriods({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HistoricalPeriod(),
        HistoricalPeriod(),
      ],
    );
  }
}
