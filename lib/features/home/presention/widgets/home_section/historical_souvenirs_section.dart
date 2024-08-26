import 'package:flutter/cupertino.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/custom_header_text.dart';
import '../home_category_list_view.dart';

class HistoricalSouvenirsSection extends StatelessWidget {
  const HistoricalSouvenirsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeaderText(text: AppStrings.historicalSouvenirs,),
        SizedBox(height: 32,),
        CustomCategoryListView(),
      ],
    );
  }
}
