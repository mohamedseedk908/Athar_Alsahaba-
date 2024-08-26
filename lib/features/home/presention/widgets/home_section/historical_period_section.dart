import 'package:flutter/cupertino.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/custom_header_text.dart';
import '../home_container.dart';

class HistoricalPeriodSection extends StatelessWidget {
  const HistoricalPeriodSection({super.key});

  @override
  Widget build(BuildContext context) {

        return Column(
          children: [
            CustomHeaderText(text: AppStrings.historicalPeriods,),
            SizedBox(height: 32,),
            HistoricalPeriods(),
            SizedBox(height: 32,),
          ],
        );
  }
}

